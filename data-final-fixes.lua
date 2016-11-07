-- Make logistic robots unminable.

-- In vanilla Factorio, there is only one type of logistic robot, named "logistic-robot".
-- So for vanilla the for-loop could be skipped and we could just do the following.
--     data.raw["logistic-robot"]["logistic-robot"].minable = false
-- However, some mods add more types of logistic robots.
-- With this for-loop, we just make them *all* unminable, regardless of how many there are.
for name, entity in pairs(data.raw["logistic-robot"]) do
  entity.minable = nil
end
