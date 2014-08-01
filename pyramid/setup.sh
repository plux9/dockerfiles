PYENV_ROOT=$HOME/.pyenv
PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
pyenv global 3.4.1
python setup.py develop
python setup.py install
