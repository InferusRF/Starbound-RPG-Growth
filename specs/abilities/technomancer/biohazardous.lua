require "/scripts/vec2.lua"
require "/scripts/util.lua"

function init()
  self.id = effect.sourceEntity()
  animator.setParticleEmitterOffsetRegion("embers", mcontroller.boundBox())
  animator.setParticleEmitterActive("embers", true)
end


function update(dt)
  --Effect Expires if Specialization is no longer correct.
  --Must keep this for every Ability, but change the specttype and classtype!!!
  if world.entityCurrency(self.id, "spectype") ~= 7 or not (world.entityCurrency(self.id, "classtype") == 2 or world.entityCurrency(self.id, "classtype") == 4) then
    effect.expire()
  end

end

function uninit()

end
