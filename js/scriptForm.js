document.addEventListener("DOMContentLoaded", function () {
    // This ensures that the DOM is fully loaded before executing the script

    const urlParams = new URLSearchParams(window.location.search);
    const isian = urlParams.get('isian');
    const ayam = urlParams.get('ayam')
    const harga = urlParams.get('harga')

    document.getElementById("namwis").value = isian;
    document.getElementById("fotobg").src = ayam;
    document.getElementById("harga").value = harga * 1;
});
function cekharga() {
    const urlParams = new URLSearchParams(window.location.search);
    const harga = urlParams.get('harga')
    var jumlah = parseInt(document.getElementById('jumlahTiket').value);
    var nomor = parseInt(harga);
    const baru = nomor * jumlah;
    document.getElementById("harga").value = baru;
}


function submitForm() {
    alert("Tiket sudah di pesan.");
    // Arahkan pengguna kembali ke halaman utama
    window.location.href = "gallery.html";
}