build_slides:
	jupyter nbconvert \
	demo.ipynb  \
	--to slides \
	--TagRemovePreprocessor.remove_input_tags={\"remove-input\"} \
	--TemplateExporter.exclude_input_prompt=True \
	--TemplateExporter.exclude_output_prompt=True \
	--SlidesExporter.reveal_scroll=True \
	
	mv demo.slides.html index.html

clean:
	rm index.html