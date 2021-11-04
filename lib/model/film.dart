class Film {
  String judul;
  String genre;
  String deskripsi;
  String tglRilis;
  double skor;
  String status;
  String gambarPoster;
  String gambarBackdrop;
  List<String> imageUrls;

  Film({
    required this.judul,
    required this.genre,
    required this.deskripsi,
    required this.tglRilis,
    required this.skor,
    required this.status,
    required this.gambarPoster,
    required this.gambarBackdrop,
    required this.imageUrls,
  });
}

var filmList = [
  Film(
    judul: "Cruella",
    genre: "Comedy, Crime",
    deskripsi: "In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella’s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.",
    tglRilis: "May 26, 2021",
    skor: 8.6,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w500/rTh4K5uw9HypmpGslcKd4QfHl93.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/original/6MKr3KgOLmzOP6MSuZERO41Lpkt.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/cZ8a3QvAnj2cgcgVL6g4XaqPzpL.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/xr8Ki3CIqweWWqS5q0kUYdiK6oQ.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/4nEKEWJpaTHncCTv6zeP98V0qGI.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/hV2oiKF2xlDMXtuq3Si1TA4b6DA.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/pw6AvwaBbr44Nje9JQMBBwhchiu.jpg'],
  ),
  Film(
    judul: "The Conjuring: The Devil Made Me Do It",
    genre: "Horror, Mystery, Thriller",
    deskripsi: "Paranormal investigators Ed and Lorraine Warren encounter what would become one of the most sensational cases from their files. The fight for the soul of a young boy takes them beyond anything they'd ever seen before, to mark the first time in U.S. history that a murder suspect would claim demonic possession as a defense.",
    tglRilis: "May 25, 2021",
    skor: 8.2,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w500/xbSuFiJbbBWCkyCCKIMfuDCA4yV.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/original/qi6Edc1OPcyENecGtz8TF0DUr9e.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/tc1ezEfIY8BhCy85svOUDtpBFPt.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/5Vs7huBmTKftwlsc2BPAntyaQYj.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/abf9bZJgMnpeCNsp18Aj2y80WOc.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/oNQ7mAN9nyeHqucJ7TBtmyraFm4.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/upOiPhYOQE6DE1jLJaPLiK1GROz.jpg'],
  ),
  Film(
    judul: "F9",
    genre: "Action, Adventure, Crime",
    deskripsi: "Dominic Toretto and his crew battle the most skilled assassin and high-performance driver they've ever encountered: his forsaken brother.",
    tglRilis: "June 25, 2021",
    skor: 7.9,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w500/bOFaAXmWWXC3Rbv4u4uM9ZSzRXP.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/original/xXHZeb1yhJvnSHPzZDqee0zfMb6.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/9uxTwqB8anAiPomB6Kqm6A73VTV.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/hulQAiXNFLq4VDYVxBPgK009njf.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/jxoy4fbXNKFQtBdK73cLXEz3ufS.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/erkJijujhe48vhJ8iCEtVpNEeVn.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/rgB2eIOt7WyQjdgJCOuESdDlrjg.jpg'],
  ),
  Film(
    judul: "Army of the Dead",
    genre: "Action, Sc-Fi, Horror, Thriller",
    deskripsi: "Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble: venturing into the quarantine zone to pull off the greatest heist ever attempted.",
    tglRilis: "May 14, 2021",
    skor: 6.5,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w500/z8CExJekGrEThbpMXAmCFvvgoJR.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/original/9WlJFhOSCPnaaSmsrv0B4zA8iUb.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/ymn6iQBJbQZN6BYI60YJDXVP4gF.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/xIZojkBo3Cf0GnchjC8hSS5P105.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/2kROckfySgXMBa2nsCIDoR9R6gg.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/ixY5MwLKeS8cSmd4E0H6fByutrA.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/7yHT7a1b3QAQaElX7aoVEoewy9N.jpg'],
  ),
  Film(
    judul: "Endangered Species",
    genre: "Thriller, Action",
    deskripsi: "Jack Halsey takes his wife, their adult kids, and a friend for a dream vacation in Kenya. But as they venture off alone into a wilderness park, their safari van is flipped over by an angry rhino, leaving them injured and desperate. Then, as two of them go in search of rescue, a bloody, vicious encounter with a leopard and a clan of hyenas incites a desperate fight for survival.",
    tglRilis: "May 27, 2021",
    skor: 6.6,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w500/ccsSqbpEqr2KK9eMvoeF8ERFCd5.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/original/A0xW7GgeFQoQmPOn7HcHkBQ5nlb.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/46tcoatrmUXrUcYpQMeZI9pO4wr.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/oc7lc2d98lM393blvmFfAGnXSMf.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/6ltJRaagdFYwog7tjyMYV854Eao.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/cAd88KTNwNTxnIsZVLlytOCcKBM.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/b7c4e7ONHE2Ts8w770qtMSnMIwl.jpg'],
  ),
  Film(
    judul: "Mortal Kombat",
    genre: "Action, Fantasy, Adventure",
    deskripsi: "Washed-up MMA fighter Cole Young, unaware of his heritage, and hunted by Emperor Shang Tsung's best warrior, Sub-Zero, seeks out and trains with Earth's greatest champions as he prepares to stand against the enemies of Outworld in a high stakes battle for the universe.",
    tglRilis: "Apr 07, 2021",
    skor: 7.5,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w500/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/original/9yBVqNruk6Ykrwc32qrK2TIE5xw.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/ik347wakcZRfULiLbjGJpRcqSQz.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/aAfaMEEqD8syHv5bLi5B3sccrM2.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/Am9vM77uZd9bGODugwmWtOfzx6E.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/wDw1z9Pk9dEzopzlZQ4X8wTbj1t.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/etlE8YdFgYk6Nbe3uRQcc5uF0t2.jpg'],
  ),
  Film(
    judul: "The Unholy",
    genre: "Horror",
    deskripsi: "Alice, a young hearing-impaired girl who, after a supposed visitation from the Virgin Mary, is inexplicably able to hear, speak and heal the sick. As word spreads and people from near and far flock to witness her miracles, a disgraced journalist hoping to revive his career visits the small New England town to investigate. When terrifying events begin to happen all around, he starts to question if these phenomena are the works of the Virgin Mary or something much more sinister.",
    tglRilis: "Mar 03, 2021",
    skor: 7,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w500/bShgiEQoPnWdw4LBrYT5u18JF34.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/original/jw6ASGRT2gi8EjCImpGtbiJ9NQ9.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/m8bdrmh6ExDCGQ64E83mHg002YV.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/kYBJ9YItPmbvl3009eKAkvkIlYl.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/9UszBdQJ9PmyBydIeIBxlStozhW.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/4kFwHnj9VpVpNoMpD0xduerFKS.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/rWeb2kjYCA7V9MC9kRwRpm57YoY.jpg'],
  ),
  Film(
    judul: "Free Guy",
    genre: "Comedy, Action, Adventure",
    deskripsi: "A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.",
    tglRilis: "August 13, 2021",
    skor: 7.5,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/4SYTH5FdB0dAORV98Nwg3llgVnY.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/va8pcuzXodVLYUQLjB1USZVB6gz.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/9MDi35Fy6ym7SYbO3B04vf1vBnm.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/kXoE2UWf01V89yVDD08MCXrEiRe.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/lxbNTecxOIlV4roX02RT4Ga2Rn2.jpg'],
  ),
  Film(
    judul: "The Suicide Squad",
    genre: "Action, Adventure, Fantasy",
    deskripsi: "Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese.",
    tglRilis: "August 06, 2021",
    skor: 7.8,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kb4s0ML0iVZlG6wAKbbs9NAm6X.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/jlGmlFOcfo8n5tURmhC7YVd4Iyy.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/euDPyqLnuwaWMHajcU3oZ9uZezR.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/be1bVF7qGX91a6c5WeRPs5pKXln.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/rgB2eIOt7WyQjdgJCOuESdDlrjg.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/c4TTWy1WntzDxpgIe8kbODjWOfD.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/qDRGPAcQoW8Wuig9bvoLpHwf1gU.jpg'],
  ),
  Film(
    judul: "No Time to Die",
    genre: "Adventure, Action, Thriller",
    deskripsi: "Bond has left active service and is enjoying a tranquil life in Jamaica. His peace is short-lived when his old friend Felix Leiter from the CIA turns up asking for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.",
    tglRilis: "October 08, 2021",
    skor: 7.4,
    status: "Released",
    gambarPoster: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iUgygt3fscRoKWCV1d0C7FbM9TP.jpg",
    gambarBackdrop: "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/u5Fp9GBy9W8fqkuGfLBuuoJf57Z.jpg",
    imageUrls: ['https://www.themoviedb.org/t/p/w138_and_h175_face/iFerDZUmC5Fu26i4qI8xnUVEHc7.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/xjRbpfeQl1YkVcqoET8UG29roGf.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/zpK2YnIWQedh9pVfNw0zbBpJkoR.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/2OuFzCbMibXGouG79tG1U4BLPbe.jpg', 'https://www.themoviedb.org/t/p/w138_and_h175_face/tJr9GcmGNHhLVVEH3i7QYbj6hBi.jpg'],
  ),
];
