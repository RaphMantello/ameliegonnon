const sidebar = document.querySelector(".side-bar");
const htmlContent = `<div class="expo-titles">
                      <% @expos.each do |expo| %>
                        <a href="" data-remote="true"><%= expo.name %></a>
                      <% end %>
                    </div>`;

sidebar.addEventListener("click", (event) => {
  sidebar.innerHTML = htmlContent
});
