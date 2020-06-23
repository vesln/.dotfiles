function talent_autofix
  yarn --cwd ~/Work/angellist/app/frontend/talent tslint:fix
  yarn --cwd ~/Work/angellist/app/frontend/talent prettier:write
end
