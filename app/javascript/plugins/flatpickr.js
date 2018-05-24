import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import "flatpickr/dist/flatpickr.min.css";
import "flatpickr/dist/themes/airbnb.css"; // A path to the theme CSS


flatpickr("#booking_start_date", {
  allowInout: true,
  altInput: true,
  plugins: [new rangePlugin({ input: "#booking_end_date"})]
})
