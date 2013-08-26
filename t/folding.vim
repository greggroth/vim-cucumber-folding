silent filetype plugin on

source t/support/matchers.vim

describe 'cucumber folds'
  before
    silent tabnew t/fixtures/sample.feature
    setlocal filetype=cucumber
  end

  after
    silent tabclose!
  end

  it 'folds on `Background`'
    normal zM
    Expect FoldBoundariesInRange(4, 5) toBeClosed
  end

  it 'folds on `Scenario`'
    normal zM
    Expect FoldBoundariesInRange(7, 9) toBeClosed
    Expect FoldBoundariesInRange(11, 13) toBeClosed
  end
end
