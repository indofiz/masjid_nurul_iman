<footer id="footer">
    <div class="container">
        <div class="row footer_content">
            <div class="col-12 col-md-5">
                <h5>Layanan</h5>
                <div class="row">
                    <div class="col-6">
                        <ul>
                            <li><a href="">Shalat Berjamaah</a></li>
                            <li><a href="">Majelis Taklim</a></li>
                            <li><a href="">Jumat Berkah</a></li>
                            <li><a href="">Arisan Kurban</a></li>
                            <li><a href="">Pemakaman</a></li>
                        </ul>
                    </div>
                    <div class="col-6">
                        <ul>
                            <li><a href="">Taman pendidikan alquran</a></li>
                            <li><a href="">Kegitan sosial</a></li>
                            <li><a href="">Amil Zakat</a></li>
                            <li>
                                <a href="">Santunan anak yatim /pitu & lansia miskin</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <h5>Kontak</h5>
                <div class="row">

                    <ol>
                        <li>
                            <img src="<?= base_url('assets/depan/icon/location.svg'); ?>" alt="" /><span><?= $profil['alamat_profil']; ?></span>
                        </li>
                        <li>
                            <img src="<?= base_url('assets/depan/icon/phone.svg'); ?>" alt="" /><span>Telepon : <?= $profil['telp_profil']; ?></span>
                        </li>
                        <li>
                            <img src=" <?= base_url('assets/depan/icon/email.svg'); ?>" alt="" /><span>Email: <?= $profil['email_profil']; ?></span>
                        </li>
                    </ol>
                </div>
            </div>
            <div class="col-12 col-md-3">
                <h5>Lokasi</h5>
                <div class="w-full mt-4">
                    <iframe style="border-radius: 12px; border: 0" width="100%" height="300" style="border: 0" allowfullscreen="" loading="lazy" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3987.15803164956!2d106.11105591475508!3d-2.0924234984747017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e22c0533199d061%3A0x1cd80d5d5aac56ce!2sJl.%20Selangat%2C%20Selindung%20Baru%2C%20Kec.%20Gabek%2C%20Kota%20Pangkal%20Pinang%2C%20Kepulauan%20Bangka%20Belitung%2033172!5e0!3m2!1sid!2sid!4v1642965683682!5m2!1sid!2sid"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="py-3 powered text-center">
        <div class="containter">
            © <span id="year"></span> Copyright: Masjid Nurul Iman
        </div>
    </div>
</footer>