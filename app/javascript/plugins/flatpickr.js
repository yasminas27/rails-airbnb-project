import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // A path to the theme CSS


flatpickr("#range_start", {
  allowInout: true,
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
})
