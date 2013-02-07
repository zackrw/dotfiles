IRB.conf[:SAVE_HISTORY] = 1000

if defined? Rails

  begin
    require 'hirb'
    Hirb.enable
  rescue LoadError
  end

  begin
    require 'awesome_print'
  rescue LoadError
  end

  begin
    require 'clipboard`'
  rescue LoadError
  end

  begin
    require 'methodfinder'
  rescue LoadError
  end

  begin
    require 'wirb'
    Wirb.start
  rescue LoadError
  end

end
