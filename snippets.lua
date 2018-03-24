-- Snippets I use in my WeakAuras a lot

-- class color a weak aura
function()
  local _, powerToken = UnitPowerType("player");
  local powerColor = PowerBarColor[powerToken];
  return powerColor.r,powerColor.g,powerColor.b;
end

-- Format player power value into m, k, or as is
function()
  local power = UnitPower("player");
  local powerFormatted;
  local powerString = "";
  if power > 1000000 then
    powerFormatted = power / 1000000
    powerString = string.format("%.1f m", powerFormatted);
  elseif power > 1000 then
    powerFormatted = power / 1000
    powerString = string.format("%f k", powerFormatted);
  else
    powerString = power;
  end
  return powerString;
end
