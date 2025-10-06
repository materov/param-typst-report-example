library(quarto)
# здесь нужно прописать путь к каталогу с отчетом
# потом заменим нв here::here()
setwd("/Users/materov/ALL/@GitProjects/@2025/param-typst-report-example/")

all_species <- unique(palmerpenguins::penguins$species)

for (selected_species in all_species) {
  quarto::quarto_render(
    input = "Report-typst.qmd",
    # cache_refresh = TRUE,
    execute_params = list(species = selected_species),
    output_file = glue::glue("report_{selected_species}.pdf")
  )
}
# перемещение каждого файла в свой каталог
# пока не требуется
