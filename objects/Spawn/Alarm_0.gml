if(num_words < 26) {
	instance_create_layer(random_range(100,1800), random_range(400,850), "Spawn", obj_letter);
	num_words += 1;
}

alarm[0] = spn_rate;