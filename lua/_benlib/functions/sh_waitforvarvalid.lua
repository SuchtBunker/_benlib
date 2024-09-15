-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

function _benlib.WaitForFunc(func,callback)
  local f
  f = function()
    if !func() then
      timer.Simple(0.1,f)
    else
      callback()
    end
  end
  f()
end
