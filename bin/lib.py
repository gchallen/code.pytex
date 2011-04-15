def clean(inlines):
  import sys, re, os, textwrap
  removecomments = re.compile(r"^(%.*)$", re.M)
  inlines = removecomments.sub("", inlines)
  fixpercents = re.compile(r"\\%", re.M)
  inlines = fixpercents.sub("%", inlines)
  removetex = re.compile(r"~?\\(section|cite)\{([^\}]+)\}", re.M)
  inlines = removetex.sub("", inlines)
  removetex2 = re.compile(r"\\(clearpage)", re.M)
  inlines = removetex2.sub("", inlines)
  keeptex = re.compile(r"\\(textit|textbf|texttt)\{([^\}]+)\}", re.M)
  inlines = keeptex.sub(r"\2", inlines)
  keeptex2 = re.compile(r"\{\\scshape\s+([^\}]+)\}", re.S | re.M)
  inlines = keeptex2.sub(r"\1", inlines)
  quotes = re.compile(r"(``|'')", re.M)
  inlines = quotes.sub(r'"', inlines)
  enumerate = re.compile(r"\\begin\{enumerate\}(.*?)\\end\{enumerate\}", re.S | re.M)

  class Counter:
    def __init__(self):
      self.count = 0
    def reset(self):
      self.count = 0
    def increment(self, matchObject):
      self.count += 1
      return str(self.count) + "."
  def match(m):
    c = Counter()
    item = re.compile(r"\\item")
    text = item.sub(c.increment, m.group(1))
    c.reset()
    return text
  inlines = enumerate.sub(match, inlines)

  removeitem = re.compile(r"~?\\item", re.M)
  inlines = removeitem.sub("", inlines)
  removeflushenumbf = re.compile(r"\\begin\{flushenumbf\}\s+(.*?)\s+\\end\{flushenumbf\}", re.S | re.M)
  inlines = removeflushenumbf.sub(r"\1", inlines)

  output = '\n\n'.join([re.sub(r'\n', ' ', l) for l in re.split(r'\s{2,}', inlines)][0:])
  return output
