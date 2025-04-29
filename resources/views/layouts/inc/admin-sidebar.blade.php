<div id="layoutSidenav_nav" class="navbar-nav-scroll sb-sidenav-dark"
    style="--bs-scroll-height: 100%; 
/* background-color: rgb(44, 44, 44) */
">
    <nav class="sb-sidenav accordion" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                @if (Auth::user()->level == 1)
                    <div class="sb-sidenav-menu-heading">Core</div>
                    {{-- <a class="nav-link" href="{{ route('item.index') }}">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Item
                    </a> --}}
                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseExample" 
                    role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Item
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('item.index',['val'=>'CSO']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Dashboard CSO
                            </a></li>
                            <li > 
                                <a class="nav-link" href="{{ route('item.index',['val'=>'CSS']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Dashboard CSS
                            </a></li>
                        </ul>
                    </div>
                    <a class="nav-link" href="{{ route('avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Batch
                    </a>
                    <div class="sb-sidenav-menu-heading">Master</div>
                    <a class="nav-link" href="{{ route('user.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-user-cog" style="font-size: 20px"></i>
                        </div>
                        User
                    </a>
                    <a class="nav-link" href="{{ route('tipe-user.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-users" style="font-size: 20px"></i>
                        </div>
                        Tipe User
                    </a>
                    <a class="nav-link" href="{{ route('departemen.index') }}">
                        <div class="sb-nav-link-icon"><i class="bi bi-person-workspace" style="font-size: 20px"></i></i>
                        </div>
                        Departemen
                    </a>
                    <a class="nav-link" href="{{ route('company.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-sitemap" style="font-size: 20px"></i>
                        </div>
                        Company
                    </a>
                    <a class="nav-link" href="{{ route('area-lokasi.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-warehouse" style="font-size: 20px"></i>
                        </div>
                        Area Lokasi
                    </a>
                    <a class="nav-link" href="{{ route('warna.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-paint-brush"
                                style="font-size: 20px"></i></div>
                        Warna
                    </a>
                    <a class="nav-link" href="{{ route('group.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-object-group"
                                style="font-size: 20px"></i></div>
                        Group
                    </a>
                    <a class="nav-link" href="{{ route('grade.index') }}">
                        <div class="sb-nav-link-icon"><i class="bi bi-alphabet-uppercase"
                                style="font-size: 20px"></i></div>
                        Grade
                    </a>
                    <a class="nav-link" href="{{ route('keterangan-cso-ulang.index') }}">
                        <div class="sb-nav-link-icon"><i class="bi bi-chat-dots-fill" style="font-size: 20px"></i></div>
                        Keterangan
                    </a>
                    <a class="nav-link" href="{{ route('keputusan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-file-signature" style="font-size: 20px"></i>
                        </div>
                        Keputusan
                    </a>
                    <a class="nav-link" href="{{ route('kategori-produk.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-cubes-stacked pe-1"
                                style="font-size: 20px"></i></div>
                        Kategori Produk
                    </a>
                    <div class="sb-sidenav-menu-heading">Penjadwalan</div>
                    {{-- <a class="nav-link" href="{{ route('import-stok.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-import"
                                style="font-size: 20px"></i></div>
                        Impor Stok
                    </a> --}}
                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseImpor" 
                    role="button" aria-expanded="false" aria-controls="collapseImpor">
                        <div class="sb-nav-link-icon">
                            <i class="nav-icon fas fa-file-import"
                                style="font-size: 20px"></i>
                        </div>
                        Impor
                    </a>
                    <div class="collapse" id="collapseImpor">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('import-stok.index',['val'=>'CSO']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Stok CSO
                            </a></li>
                            <li > 
                                <a class="nav-link" href="{{ route('import-stok.index',['val'=>'CSS']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Stok CSS
                            </a></li>
                        </ul>
                    </div>
                    <a class="nav-link" href="{{ route('import-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-import"
                                style="font-size: 20px"v></i></div>
                        Impor Batch
                    </a>

                    
                    <a class="nav-link" data-bs-toggle="collapse" href="#collapsePengaturan" 
                    role="button" aria-expanded="false" aria-controls="collapsePengaturan">
                        <div class="fa-solid fa-bars-progress">
                            <i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Pengaturan
                    </a>
                    <div class="collapse" id="collapsePengaturan">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('pengaturan.index',['val'=>'CSO']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                CSO
                            </a></li>
                            <li > 
                                <a class="nav-link" href="{{ route('pengaturan.index',['val'=>'CSS']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                CSS
                            </a></li>
                        </ul>
                    </div>



                    {{-- <a class="nav-link" href="{{ route('pengaturan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-bars-progress" style="font-size: 20px"></i>
                        </div>
                        Pengaturan CSO
                    </a> --}}
                    <div class="sb-sidenav-menu-heading">Konfirmasi</div>
                    <a class="nav-link" href="{{ route('konfirmasi-wrh.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-user-check" style="font-size: 20px"></i>
                        </div>
                        Konfirmasi WRH
                    </a>
                    <div class="sb-sidenav-menu-heading">Resume</div>

                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseResumeItem" 
                    role="button" aria-expanded="false" aria-controls="collapseResumeItem">
                        <div class="sb-nav-link-icon">
                            <i class="fa-solid fa-clipboard-list"
                                style="font-size: 20px"></i>
                        </div>
                        Resume Item
                    </a>
                    <div class="collapse" id="collapseResumeItem">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('susunan-tim-cso.index',['val'=>'CSO']) }}">
                                    <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                    </div>
                                    CSO item
                                </a>
                            </li>
                            <li > 
                                <a class="nav-link" href="{{ route('susunan-tim-cso.index',['val'=>'CSS']) }}">
                                    <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                    </div>
                                    CSS Item
                                </a>
                            </li>
                        </ul>
                    </div>

                    {{-- <a class="nav-link" href="{{ route('susunan-tim-cso.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-clipboard-list" style="font-size: 20px"></i>
                        </div>
                        Resume CSO Item
                    </a> --}}
                    <a class="nav-link" href="{{ route('susunan-tim-cso-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-clipboard-list" style="font-size: 20px"></i>
                        </div>
                        Resume CSO Batch
                    </a>
                    <div class="sb-sidenav-menu-heading">Report</div>
                    {{-- <a class="nav-link" href="{{ route('cek-stok.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Report Cek Stok Item
                    </a> --}}
                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseReport" 
                    role="button" aria-expanded="false" aria-controls="collapseReport">
                        <div class="sb-nav-link-icon">
                            <i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Report Stok
                    </a>
                    <div class="collapse" id="collapseReport">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('cek-stok.index',['val'=>'CSO']) }}">
                                    <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                    </div>
                                    CSO item
                                </a>
                            </li>
                            <li > 
                                <a class="nav-link" href="{{ route('cek-stok.index',['val'=>'CSS']) }}">
                                    <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                    </div>
                                    CSS Item
                                </a>
                            </li>
                        </ul>
                    </div>

                    <a class="nav-link" href="{{ route('cek-stok-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Report Cek Stok Batch
                    </a>
                    <div class="sb-sidenav-menu-heading">Approval</div>
                    <a class="nav-link" href="{{ route('approval-stok.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Approval Cek Stok Item
                    </a>
                    <a class="nav-link" href="{{ route('cek-stok-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Approval Cek Stok Batch
                    </a>
                @elseif(Auth::user()->level == 2)
                    <div class="sb-sidenav-menu-heading">Core</div>

                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseExample" 
                    role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Item
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('item.index',['val'=>'CSO']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Dashboard CSO
                            </a></li>
                            <li > 
                                <a class="nav-link" href="{{ route('item.index',['val'=>'CSS']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Dashboard CSS
                            </a></li>
                        </ul>
                    </div>


                    {{-- <a class="nav-link" href="{{ route('item.index') }}">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Item
                    </a> --}}
                    <a class="nav-link" href="{{ route('avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Batch
                    </a>
                    <div class="sb-sidenav-menu-heading">Master</div>
                    <a class="nav-link" href="{{ route('user.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-user-cog"
                                style="font-size: 20px"></i>
                        </div>
                        User
                    </a>
                    <a class="nav-link" href="{{ route('area-lokasi.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-warehouse"
                                style="font-size: 20px"></i>
                        </div>
                        Area Lokasi
                    </a>
                    <a class="nav-link" href="{{ route('warna.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-paint-brush"
                                style="font-size: 20px"></i></div>
                        Warna
                    </a>
                    <a class="nav-link" href="{{ route('group.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-object-group"
                                style="font-size: 20px"></i></div>
                        Group
                    </a>
                    <a class="nav-link" href="{{ route('keterangan-cso-ulang.index') }}">
                        <div class="sb-nav-link-icon"><i class="bi bi-chat-dots-fill" style="font-size: 20px"></i></div>
                        Keterangan
                    </a>
                    <a class="nav-link" href="{{ route('grade.index') }}">
                        <div class="sb-nav-link-icon"><i class="bi bi-alphabet-uppercase"
                                style="font-size: 20px"></i></div>
                        Grade
                    </a>
                    <a class="nav-link" href="{{ route('keputusan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-file-signature"
                                style="font-size: 20px"></i>
                        </div>
                        Keputusan
                    </a>
                    <a class="nav-link" href="{{ route('kategori-produk.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-cubes-stacked pe-1"
                                style="font-size: 20px"></i></div>
                        Kategori Produk
                    </a>
                    <div class="sb-sidenav-menu-heading">Penjadwalan</div>

                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseImpor" 
                    role="button" aria-expanded="false" aria-controls="collapseImpor">
                        <div class="sb-nav-link-icon">
                            <i class="nav-icon fas fa-file-import"
                                style="font-size: 20px"></i>
                        </div>
                        Impor
                    </a>
                    <div class="collapse" id="collapseImpor">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('import-stok.index',['val'=>'CSO']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Stok CSO
                            </a></li>
                            <li > 
                                <a class="nav-link" href="{{ route('import-stok.index',['val'=>'CSS']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Stok CSS
                            </a></li>
                        </ul>
                    </div>
                    {{-- <a class="nav-link" href="{{ route('import-stok.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-import"
                                style="font-size: 20px"></i></div>
                        Impor Stok
                    </a> --}}
                    <a class="nav-link" href="{{ route('import-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-import"
                                style="font-size: 20px"v></i></div>
                        Impor Batch
                    </a>

                    <a class="nav-link" data-bs-toggle="collapse" href="#collapsePengaturan" 
                    role="button" aria-expanded="false" aria-controls="collapsePengaturan">
                        <div class="fa-solid fa-bars-progress">
                            <i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Pengaturan
                    </a>
                    <div class="collapse" id="collapsePengaturan">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('pengaturan.index',['val'=>'CSO']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                CSO
                            </a></li>
                            <li > 
                                <a class="nav-link" href="{{ route('pengaturan.index',['val'=>'CSS']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                CSS
                            </a></li>
                        </ul>
                    </div>



                    {{-- <a class="nav-link" href="{{ route('pengaturan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-bars-progress"
                                style="font-size: 20px"></i>
                        </div>
                        Pengaturan CSO
                    </a> --}}
                    <div class="sb-sidenav-menu-heading">Konfirmasi</div>
                    <div class="sb-sidenav-menu-heading">Resume</div>
                    {{-- <a class="nav-link" href="{{ route('susunan-tim-cso.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-clipboard-list"
                                style="font-size: 20px"></i>
                        </div>
                        Resume CSO Item
                    </a> --}}
                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseResumeItem" 
                    role="button" aria-expanded="false" aria-controls="collapseResumeItem">
                        <div class="sb-nav-link-icon">
                            <i class="fa-solid fa-clipboard-list"
                                style="font-size: 20px"></i>
                        </div>
                        Resume Item
                    </a>
                    <div class="collapse" id="collapseResumeItem">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('susunan-tim-cso.index',['val'=>'CSO']) }}">
                                    <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                    </div>
                                    CSO item
                                </a>
                            </li>
                            <li > 
                                <a class="nav-link" href="{{ route('susunan-tim-cso.index',['val'=>'CSS']) }}">
                                    <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                    </div>
                                    CSS Item
                                </a>
                            </li>
                        </ul>
                    </div>
                    <a class="nav-link" href="{{ route('susunan-tim-cso-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-clipboard-list"
                                style="font-size: 20px"></i>
                        </div>
                        Resume CSO Batch
                    </a>
                    <div class="sb-sidenav-menu-heading">Report</div>
                    {{-- <a class="nav-link" href="{{ route('cek-stok.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Report Cek Stok Item
                    </a> --}}
                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseReport" 
                    role="button" aria-expanded="false" aria-controls="collapseReport">
                        <div class="sb-nav-link-icon">
                            <i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Report Stok
                    </a>
                    <div class="collapse" id="collapseReport">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('cek-stok.index',['val'=>'CSO']) }}">
                                    <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                    </div>
                                    CSO item
                                </a>
                            </li>
                            <li > 
                                <a class="nav-link" href="{{ route('cek-stok.index',['val'=>'CSS']) }}">
                                    <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                    </div>
                                    CSS Item
                                </a>
                            </li>
                        </ul>
                    </div>
                    <a class="nav-link" href="{{ route('cek-stok-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Report Cek Stok Batch
                    </a>
                    <div class="sb-sidenav-menu-heading">Approval</div>
                    <a class="nav-link" href="{{ route('approval-stok.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Approval Cek Stok Item
                    </a>
                    {{-- <a class="nav-link" href="{{ route('cek-stok-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Approval Cek Stok Batch
                    </a> --}}
                @elseif(Auth::user()->level == 3)
                    <div class="sb-sidenav-menu-heading">Core</div>
                    {{-- <a class="nav-link" href="{{ route('item.index') }}">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Item
                    </a> --}}
                    <a class="nav-link" data-bs-toggle="collapse" href="#collapseExample" 
                    role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Item
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul style="list-style-type:none;padding-left:15px;margin-bottom:0px;">
                            <li> 
                                <a class="nav-link" href="{{ route('item.index',['val'=>'CSO']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Dashboard CSO
                            </a></li>
                            <li > 
                                <a class="nav-link" href="{{ route('item.index',['val'=>'CSS']) }}">
                                <div class="sb-nav-link-icon"><i class="bi bi-arrow-right-circle" style="font-size: 20px"></i>
                                </div>
                                Dashboard CSS
                            </a></li>
                        </ul>
                    </div>
                    <a class="nav-link" href="{{ route('avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt" style="font-size: 20px"></i>
                        </div>
                        Dashboard Batch
                    </a>
                @elseif(Auth::user()->level == 5)
                    <div class="sb-sidenav-menu-heading">Konfirmasi</div>
                    <a class="nav-link" href="{{ route('konfirmasi-wrh.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-user-check"
                                style="font-size: 20px"></i>
                        </div>
                        Konfirmasi WRH
                    </a>
                    <div class="sb-sidenav-menu-heading">Approval</div>
                    <a class="nav-link" href="{{ route('approval-stok.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Approval Cek Stok Item
                    </a>
                @elseif (Auth::user()->level == 6 ||
                        Auth::user()->level == 7 ||
                        Auth::user()->level == 8 ||
                        Auth::user()->level == 9 ||
                        Auth::user()->level == 10)
                    @if (Auth::user()->level == 6)
                        <div class="sb-sidenav-menu-heading">Konfirmasi</div>
                        <a class="nav-link" href="{{ route('konfirmasi-wrh.index') }}">
                            <div class="sb-nav-link-icon"><i class="nav-icon fas fa-user-check"
                                    style="font-size: 20px"></i>
                            </div>
                            Konfirmasi WRH
                        </a>
                    @endif
                    <div class="sb-sidenav-menu-heading">Approval</div>
                    <a class="nav-link" href="{{ route('approval-stok.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Approval Cek Stok Item
                    </a>
                    <a class="nav-link" href="{{ route('cek-stok-avalan.index') }}">
                        <div class="sb-nav-link-icon"><i class="nav-icon fas fa-file-alt"
                                style="font-size: 20px"></i>
                        </div>
                        Approval Cek Stok Batch
                    </a>
                @endif
            </div>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
            @if (Auth::user()->level == 1)
                Super User
            @elseif(Auth::user()->level == 2)
                Admin
            @elseif(Auth::user()->level == 3)
                Analisator
            @elseif(Auth::user()->level == 5)
                Warehouse
            @elseif(Auth::user()->level == 6)
                Kepala Warehouse
            @elseif(Auth::user()->level == 7)
                Kepala FAC
            @elseif(Auth::user()->level == 8)
                Kepala Purchasing
            @elseif(Auth::user()->level == 9)
                Kepala Operasional
            @elseif(Auth::user()->level == 10)
                Regional Manager
            @endif
        </div>
    </nav>
</div>
