baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'BlackCircle-Model';
				package: 'BlackCircle-Tests' with: [ spec requires: 'BlackCircle-Model' ].
			spec
				group: 'Deployment' with: #('BlackCircle-Model');
				group: 'Development' with: #('BlackCircle-Tests');
				group: 'default' with: #('Deployment') ]