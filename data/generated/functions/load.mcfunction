# Stop all conversations, if possible.
tag @a remove spoken-to
tag @e[tag=npc] remove speaking

# Villager interaction detection
scoreboard objectives add npc-interact minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add dialogue-status dummy


# Quest scoreboard setup
scoreboard objectives add quest-status dummy
scoreboard objectives add quest-status-old dummy

# set up quest book
scoreboard objectives add quest-book-upd dummy
data modify storage generated:quest_book current set value ["","","",""]
data modify storage generated:quest_book completed set value ["","","",""]

# SET UP CONSTS
scoreboard objectives add const dummy
scoreboard players set 0 const 0
scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 5 const 5
scoreboard players set 6 const 6
scoreboard players set 7 const 7
scoreboard players set 8 const 8
scoreboard players set 9 const 9
scoreboard players set 10 const 10
scoreboard players set 11 const 11
scoreboard players set 12 const 12
scoreboard players set 13 const 13
scoreboard players set 14 const 14
scoreboard players set 15 const 15
scoreboard players set 16 const 16
scoreboard players set 17 const 17
scoreboard players set 18 const 18
scoreboard players set 19 const 19
scoreboard players set 20 const 20
scoreboard players set 21 const 21
scoreboard players set 22 const 22
scoreboard players set 23 const 23
scoreboard players set 24 const 24
scoreboard players set 25 const 25
scoreboard players set 26 const 26
scoreboard players set 27 const 27
scoreboard players set 28 const 28
scoreboard players set 29 const 29
scoreboard players set 30 const 30
scoreboard players set 31 const 31
scoreboard players set 32 const 32
scoreboard players set 33 const 33
scoreboard players set 34 const 34
scoreboard players set 35 const 35
scoreboard players set 36 const 36
scoreboard players set 37 const 37
scoreboard players set 38 const 38
scoreboard players set 39 const 39
scoreboard players set 40 const 40
scoreboard players set 41 const 41
scoreboard players set 42 const 42
scoreboard players set 43 const 43
scoreboard players set 44 const 44
scoreboard players set 45 const 45
scoreboard players set 46 const 46
scoreboard players set 47 const 47
scoreboard players set 48 const 48
scoreboard players set 49 const 49
scoreboard players set 50 const 50
scoreboard players set 51 const 51
scoreboard players set 52 const 52
scoreboard players set 53 const 53
scoreboard players set 54 const 54
scoreboard players set 55 const 55
scoreboard players set 56 const 56
scoreboard players set 57 const 57
scoreboard players set 58 const 58
scoreboard players set 59 const 59
scoreboard players set 60 const 60
scoreboard players set 61 const 61
scoreboard players set 62 const 62
scoreboard players set 63 const 63
scoreboard players set 64 const 64
scoreboard players set 65 const 65
scoreboard players set 66 const 66
scoreboard players set 67 const 67
scoreboard players set 68 const 68
scoreboard players set 69 const 69
scoreboard players set 70 const 70
scoreboard players set 71 const 71
scoreboard players set 72 const 72
scoreboard players set 73 const 73
scoreboard players set 74 const 74
scoreboard players set 75 const 75
scoreboard players set 76 const 76
scoreboard players set 77 const 77
scoreboard players set 78 const 78
scoreboard players set 79 const 79
scoreboard players set 80 const 80
scoreboard players set 81 const 81
scoreboard players set 82 const 82
scoreboard players set 83 const 83
scoreboard players set 84 const 84
scoreboard players set 85 const 85
scoreboard players set 86 const 86
scoreboard players set 87 const 87
scoreboard players set 88 const 88
scoreboard players set 89 const 89
scoreboard players set 90 const 90
scoreboard players set 91 const 91
scoreboard players set 92 const 92
scoreboard players set 93 const 93
scoreboard players set 94 const 94
scoreboard players set 95 const 95
scoreboard players set 96 const 96
scoreboard players set 97 const 97
scoreboard players set 98 const 98
scoreboard players set 99 const 99
scoreboard players set 100 const 100
scoreboard players set 101 const 101
scoreboard players set 102 const 102
scoreboard players set 103 const 103
scoreboard players set 104 const 104
scoreboard players set 105 const 105
scoreboard players set 106 const 106
scoreboard players set 107 const 107
scoreboard players set 108 const 108
scoreboard players set 109 const 109
scoreboard players set 110 const 110
scoreboard players set 111 const 111
scoreboard players set 112 const 112
scoreboard players set 113 const 113
scoreboard players set 114 const 114
scoreboard players set 115 const 115
scoreboard players set 116 const 116
scoreboard players set 117 const 117
scoreboard players set 118 const 118
scoreboard players set 119 const 119
scoreboard players set 120 const 120
scoreboard players set 121 const 121
scoreboard players set 122 const 122
scoreboard players set 123 const 123
scoreboard players set 124 const 124
scoreboard players set 125 const 125
scoreboard players set 126 const 126
scoreboard players set 127 const 127
scoreboard players set 128 const 128
scoreboard players set 129 const 129
scoreboard players set 130 const 130
scoreboard players set 131 const 131
scoreboard players set 132 const 132
scoreboard players set 133 const 133
scoreboard players set 134 const 134
scoreboard players set 135 const 135
scoreboard players set 136 const 136
scoreboard players set 137 const 137
scoreboard players set 138 const 138
scoreboard players set 139 const 139
scoreboard players set 140 const 140
scoreboard players set 141 const 141
scoreboard players set 142 const 142
scoreboard players set 143 const 143
scoreboard players set 144 const 144
scoreboard players set 145 const 145
scoreboard players set 146 const 146
scoreboard players set 147 const 147
scoreboard players set 148 const 148
scoreboard players set 149 const 149
scoreboard players set 150 const 150
scoreboard players set 151 const 151
scoreboard players set 152 const 152
scoreboard players set 153 const 153
scoreboard players set 154 const 154
scoreboard players set 155 const 155
scoreboard players set 156 const 156
scoreboard players set 157 const 157
scoreboard players set 158 const 158
scoreboard players set 159 const 159
scoreboard players set 160 const 160
scoreboard players set 161 const 161
scoreboard players set 162 const 162
scoreboard players set 163 const 163
scoreboard players set 164 const 164
scoreboard players set 165 const 165
scoreboard players set 166 const 166
scoreboard players set 167 const 167
scoreboard players set 168 const 168
scoreboard players set 169 const 169
scoreboard players set 170 const 170
scoreboard players set 171 const 171
scoreboard players set 172 const 172
scoreboard players set 173 const 173
scoreboard players set 174 const 174
scoreboard players set 175 const 175
scoreboard players set 176 const 176
scoreboard players set 177 const 177
scoreboard players set 178 const 178
scoreboard players set 179 const 179
scoreboard players set 180 const 180
scoreboard players set 181 const 181
scoreboard players set 182 const 182
scoreboard players set 183 const 183
scoreboard players set 184 const 184
scoreboard players set 185 const 185
scoreboard players set 186 const 186
scoreboard players set 187 const 187
scoreboard players set 188 const 188
scoreboard players set 189 const 189
scoreboard players set 190 const 190
scoreboard players set 191 const 191
scoreboard players set 192 const 192
scoreboard players set 193 const 193
scoreboard players set 194 const 194
scoreboard players set 195 const 195
scoreboard players set 196 const 196
scoreboard players set 197 const 197
scoreboard players set 198 const 198
scoreboard players set 199 const 199
scoreboard players set 200 const 200
scoreboard players set 201 const 201
scoreboard players set 202 const 202
scoreboard players set 203 const 203
scoreboard players set 204 const 204
scoreboard players set 205 const 205
scoreboard players set 206 const 206
scoreboard players set 207 const 207
scoreboard players set 208 const 208
scoreboard players set 209 const 209
scoreboard players set 210 const 210
scoreboard players set 211 const 211
scoreboard players set 212 const 212
scoreboard players set 213 const 213
scoreboard players set 214 const 214
scoreboard players set 215 const 215
scoreboard players set 216 const 216
scoreboard players set 217 const 217
scoreboard players set 218 const 218
scoreboard players set 219 const 219
scoreboard players set 220 const 220
scoreboard players set 221 const 221
scoreboard players set 222 const 222
scoreboard players set 223 const 223
scoreboard players set 224 const 224
scoreboard players set 225 const 225
scoreboard players set 226 const 226
scoreboard players set 227 const 227
scoreboard players set 228 const 228
scoreboard players set 229 const 229
scoreboard players set 230 const 230
scoreboard players set 231 const 231
scoreboard players set 232 const 232
scoreboard players set 233 const 233
scoreboard players set 234 const 234
scoreboard players set 235 const 235
scoreboard players set 236 const 236
scoreboard players set 237 const 237
scoreboard players set 238 const 238
scoreboard players set 239 const 239
scoreboard players set 240 const 240
scoreboard players set 241 const 241
scoreboard players set 242 const 242
scoreboard players set 243 const 243
scoreboard players set 244 const 244
scoreboard players set 245 const 245
scoreboard players set 246 const 246
scoreboard players set 247 const 247
scoreboard players set 248 const 248
scoreboard players set 249 const 249
scoreboard players set 250 const 250
scoreboard players set 251 const 251
scoreboard players set 252 const 252
scoreboard players set 253 const 253
scoreboard players set 254 const 254
scoreboard players set 255 const 255
scoreboard players set 256 const 256
scoreboard players set 257 const 257
scoreboard players set 258 const 258
scoreboard players set 259 const 259
scoreboard players set 260 const 260
scoreboard players set 261 const 261
scoreboard players set 262 const 262
scoreboard players set 263 const 263
scoreboard players set 264 const 264
scoreboard players set 265 const 265
scoreboard players set 266 const 266
scoreboard players set 267 const 267
scoreboard players set 268 const 268
scoreboard players set 269 const 269
scoreboard players set 270 const 270
scoreboard players set 271 const 271
scoreboard players set 272 const 272
scoreboard players set 273 const 273
scoreboard players set 274 const 274
scoreboard players set 275 const 275
scoreboard players set 276 const 276
scoreboard players set 277 const 277
scoreboard players set 278 const 278
scoreboard players set 279 const 279
scoreboard players set 280 const 280
scoreboard players set 281 const 281
scoreboard players set 282 const 282
scoreboard players set 283 const 283
scoreboard players set 284 const 284
scoreboard players set 285 const 285
scoreboard players set 286 const 286
scoreboard players set 287 const 287
scoreboard players set 288 const 288
scoreboard players set 289 const 289
scoreboard players set 290 const 290
scoreboard players set 291 const 291
scoreboard players set 292 const 292
scoreboard players set 293 const 293
scoreboard players set 294 const 294
scoreboard players set 295 const 295
scoreboard players set 296 const 296
scoreboard players set 297 const 297
scoreboard players set 298 const 298
scoreboard players set 299 const 299
scoreboard players set 300 const 300
scoreboard players set 301 const 301
scoreboard players set 302 const 302
scoreboard players set 303 const 303
scoreboard players set 304 const 304
scoreboard players set 305 const 305
scoreboard players set 306 const 306
scoreboard players set 307 const 307
scoreboard players set 308 const 308
scoreboard players set 309 const 309
scoreboard players set 310 const 310
scoreboard players set 311 const 311
scoreboard players set 312 const 312
scoreboard players set 313 const 313
scoreboard players set 314 const 314
scoreboard players set 315 const 315
scoreboard players set 316 const 316
scoreboard players set 317 const 317
scoreboard players set 318 const 318
scoreboard players set 319 const 319
scoreboard players set 320 const 320
scoreboard players set 321 const 321
scoreboard players set 322 const 322
scoreboard players set 323 const 323
scoreboard players set 324 const 324
scoreboard players set 325 const 325
scoreboard players set 326 const 326
scoreboard players set 327 const 327
scoreboard players set 328 const 328
scoreboard players set 329 const 329
scoreboard players set 330 const 330
scoreboard players set 331 const 331
scoreboard players set 332 const 332
scoreboard players set 333 const 333
scoreboard players set 334 const 334
scoreboard players set 335 const 335
scoreboard players set 336 const 336
scoreboard players set 337 const 337
scoreboard players set 338 const 338
scoreboard players set 339 const 339
scoreboard players set 340 const 340
scoreboard players set 341 const 341
scoreboard players set 342 const 342
scoreboard players set 343 const 343
scoreboard players set 344 const 344
scoreboard players set 345 const 345
scoreboard players set 346 const 346
scoreboard players set 347 const 347
scoreboard players set 348 const 348
scoreboard players set 349 const 349
scoreboard players set 350 const 350
scoreboard players set 351 const 351
scoreboard players set 352 const 352
scoreboard players set 353 const 353
scoreboard players set 354 const 354
scoreboard players set 355 const 355
scoreboard players set 356 const 356
scoreboard players set 357 const 357
scoreboard players set 358 const 358
scoreboard players set 359 const 359
scoreboard players set 360 const 360
scoreboard players set 361 const 361
scoreboard players set 362 const 362
scoreboard players set 363 const 363
scoreboard players set 364 const 364
scoreboard players set 365 const 365
scoreboard players set 366 const 366
scoreboard players set 367 const 367
scoreboard players set 368 const 368
scoreboard players set 369 const 369
scoreboard players set 370 const 370
scoreboard players set 371 const 371
scoreboard players set 372 const 372
scoreboard players set 373 const 373
scoreboard players set 374 const 374
scoreboard players set 375 const 375
scoreboard players set 376 const 376
scoreboard players set 377 const 377
scoreboard players set 378 const 378
scoreboard players set 379 const 379
scoreboard players set 380 const 380
scoreboard players set 381 const 381
scoreboard players set 382 const 382
scoreboard players set 383 const 383
scoreboard players set 384 const 384
scoreboard players set 385 const 385
scoreboard players set 386 const 386
scoreboard players set 387 const 387
scoreboard players set 388 const 388
scoreboard players set 389 const 389
scoreboard players set 390 const 390
scoreboard players set 391 const 391
scoreboard players set 392 const 392
scoreboard players set 393 const 393
scoreboard players set 394 const 394
scoreboard players set 395 const 395
scoreboard players set 396 const 396
scoreboard players set 397 const 397
scoreboard players set 398 const 398
scoreboard players set 399 const 399
scoreboard players set 400 const 400
scoreboard players set 401 const 401
scoreboard players set 402 const 402
scoreboard players set 403 const 403
scoreboard players set 404 const 404
scoreboard players set 405 const 405
scoreboard players set 406 const 406
scoreboard players set 407 const 407
scoreboard players set 408 const 408
scoreboard players set 409 const 409
scoreboard players set 410 const 410
scoreboard players set 411 const 411
scoreboard players set 412 const 412
scoreboard players set 413 const 413
scoreboard players set 414 const 414
scoreboard players set 415 const 415
scoreboard players set 416 const 416
scoreboard players set 417 const 417
scoreboard players set 418 const 418
scoreboard players set 419 const 419
scoreboard players set 420 const 420
scoreboard players set 421 const 421
scoreboard players set 422 const 422
scoreboard players set 423 const 423
scoreboard players set 424 const 424
scoreboard players set 425 const 425
scoreboard players set 426 const 426
scoreboard players set 427 const 427
scoreboard players set 428 const 428
scoreboard players set 429 const 429
scoreboard players set 430 const 430
scoreboard players set 431 const 431
scoreboard players set 432 const 432
scoreboard players set 433 const 433
scoreboard players set 434 const 434
scoreboard players set 435 const 435
scoreboard players set 436 const 436
scoreboard players set 437 const 437
scoreboard players set 438 const 438
scoreboard players set 439 const 439
scoreboard players set 440 const 440
scoreboard players set 441 const 441
scoreboard players set 442 const 442
scoreboard players set 443 const 443
scoreboard players set 444 const 444
scoreboard players set 445 const 445
scoreboard players set 446 const 446
scoreboard players set 447 const 447
scoreboard players set 448 const 448
scoreboard players set 449 const 449
scoreboard players set 450 const 450
scoreboard players set 451 const 451
scoreboard players set 452 const 452
scoreboard players set 453 const 453
scoreboard players set 454 const 454
scoreboard players set 455 const 455
scoreboard players set 456 const 456
scoreboard players set 457 const 457
scoreboard players set 458 const 458
scoreboard players set 459 const 459
scoreboard players set 460 const 460
scoreboard players set 461 const 461
scoreboard players set 462 const 462
scoreboard players set 463 const 463
scoreboard players set 464 const 464
scoreboard players set 465 const 465
scoreboard players set 466 const 466
scoreboard players set 467 const 467
scoreboard players set 468 const 468
scoreboard players set 469 const 469
scoreboard players set 470 const 470
scoreboard players set 471 const 471
scoreboard players set 472 const 472
scoreboard players set 473 const 473
scoreboard players set 474 const 474
scoreboard players set 475 const 475
scoreboard players set 476 const 476
scoreboard players set 477 const 477
scoreboard players set 478 const 478
scoreboard players set 479 const 479
scoreboard players set 480 const 480
scoreboard players set 481 const 481
scoreboard players set 482 const 482
scoreboard players set 483 const 483
scoreboard players set 484 const 484
scoreboard players set 485 const 485
scoreboard players set 486 const 486
scoreboard players set 487 const 487
scoreboard players set 488 const 488
scoreboard players set 489 const 489
scoreboard players set 490 const 490
scoreboard players set 491 const 491
scoreboard players set 492 const 492
scoreboard players set 493 const 493
scoreboard players set 494 const 494
scoreboard players set 495 const 495
scoreboard players set 496 const 496
scoreboard players set 497 const 497
scoreboard players set 498 const 498
scoreboard players set 499 const 499
scoreboard players set 500 const 500
scoreboard players set 501 const 501
scoreboard players set 502 const 502
scoreboard players set 503 const 503
scoreboard players set 504 const 504
scoreboard players set 505 const 505
scoreboard players set 506 const 506
scoreboard players set 507 const 507
scoreboard players set 508 const 508
scoreboard players set 509 const 509
scoreboard players set 510 const 510
scoreboard players set 511 const 511
scoreboard players set 512 const 512
scoreboard players set 513 const 513
scoreboard players set 514 const 514
scoreboard players set 515 const 515
scoreboard players set 516 const 516
scoreboard players set 517 const 517
scoreboard players set 518 const 518
scoreboard players set 519 const 519
scoreboard players set 520 const 520
scoreboard players set 521 const 521
scoreboard players set 522 const 522
scoreboard players set 523 const 523
scoreboard players set 524 const 524
scoreboard players set 525 const 525
scoreboard players set 526 const 526
scoreboard players set 527 const 527
scoreboard players set 528 const 528
scoreboard players set 529 const 529
scoreboard players set 530 const 530
scoreboard players set 531 const 531
scoreboard players set 532 const 532
scoreboard players set 533 const 533
scoreboard players set 534 const 534
scoreboard players set 535 const 535
scoreboard players set 536 const 536
scoreboard players set 537 const 537
scoreboard players set 538 const 538
scoreboard players set 539 const 539
scoreboard players set 540 const 540
scoreboard players set 541 const 541
scoreboard players set 542 const 542
scoreboard players set 543 const 543
scoreboard players set 544 const 544
scoreboard players set 545 const 545
scoreboard players set 546 const 546
scoreboard players set 547 const 547
scoreboard players set 548 const 548
scoreboard players set 549 const 549
scoreboard players set 550 const 550
scoreboard players set 551 const 551
scoreboard players set 552 const 552
scoreboard players set 553 const 553
scoreboard players set 554 const 554
scoreboard players set 555 const 555
scoreboard players set 556 const 556
scoreboard players set 557 const 557
scoreboard players set 558 const 558
scoreboard players set 559 const 559
scoreboard players set 560 const 560
scoreboard players set 561 const 561
scoreboard players set 562 const 562
scoreboard players set 563 const 563
scoreboard players set 564 const 564
scoreboard players set 565 const 565
scoreboard players set 566 const 566
scoreboard players set 567 const 567
scoreboard players set 568 const 568
scoreboard players set 569 const 569
scoreboard players set 570 const 570
scoreboard players set 571 const 571
scoreboard players set 572 const 572
scoreboard players set 573 const 573
scoreboard players set 574 const 574
scoreboard players set 575 const 575
scoreboard players set 576 const 576
scoreboard players set 577 const 577
scoreboard players set 578 const 578
scoreboard players set 579 const 579
scoreboard players set 580 const 580
scoreboard players set 581 const 581
scoreboard players set 582 const 582
scoreboard players set 583 const 583
scoreboard players set 584 const 584
scoreboard players set 585 const 585
scoreboard players set 586 const 586
scoreboard players set 587 const 587
scoreboard players set 588 const 588
scoreboard players set 589 const 589
scoreboard players set 590 const 590
scoreboard players set 591 const 591
scoreboard players set 592 const 592
scoreboard players set 593 const 593
scoreboard players set 594 const 594
scoreboard players set 595 const 595
scoreboard players set 596 const 596
scoreboard players set 597 const 597
scoreboard players set 598 const 598
scoreboard players set 599 const 599
scoreboard players set 600 const 600
scoreboard players set 601 const 601
scoreboard players set 602 const 602
scoreboard players set 603 const 603
scoreboard players set 604 const 604
scoreboard players set 605 const 605
scoreboard players set 606 const 606
scoreboard players set 607 const 607
scoreboard players set 608 const 608
scoreboard players set 609 const 609
scoreboard players set 610 const 610
scoreboard players set 611 const 611
scoreboard players set 612 const 612
scoreboard players set 613 const 613
scoreboard players set 614 const 614
scoreboard players set 615 const 615
scoreboard players set 616 const 616
scoreboard players set 617 const 617
scoreboard players set 618 const 618
scoreboard players set 619 const 619
scoreboard players set 620 const 620
scoreboard players set 621 const 621
scoreboard players set 622 const 622
scoreboard players set 623 const 623
scoreboard players set 624 const 624
scoreboard players set 625 const 625
scoreboard players set 626 const 626
scoreboard players set 627 const 627
scoreboard players set 628 const 628
scoreboard players set 629 const 629
scoreboard players set 630 const 630
scoreboard players set 631 const 631
scoreboard players set 632 const 632
scoreboard players set 633 const 633
scoreboard players set 634 const 634
scoreboard players set 635 const 635
scoreboard players set 636 const 636
scoreboard players set 637 const 637
scoreboard players set 638 const 638
scoreboard players set 639 const 639
scoreboard players set 640 const 640
scoreboard players set 641 const 641
scoreboard players set 642 const 642
scoreboard players set 643 const 643
scoreboard players set 644 const 644
scoreboard players set 645 const 645
scoreboard players set 646 const 646
scoreboard players set 647 const 647
scoreboard players set 648 const 648
scoreboard players set 649 const 649
scoreboard players set 650 const 650
scoreboard players set 651 const 651
scoreboard players set 652 const 652
scoreboard players set 653 const 653
scoreboard players set 654 const 654
scoreboard players set 655 const 655
scoreboard players set 656 const 656
scoreboard players set 657 const 657
scoreboard players set 658 const 658
scoreboard players set 659 const 659
scoreboard players set 660 const 660
scoreboard players set 661 const 661
scoreboard players set 662 const 662
scoreboard players set 663 const 663
scoreboard players set 664 const 664
scoreboard players set 665 const 665
scoreboard players set 666 const 666
scoreboard players set 667 const 667
scoreboard players set 668 const 668
scoreboard players set 669 const 669
scoreboard players set 670 const 670
scoreboard players set 671 const 671
scoreboard players set 672 const 672
scoreboard players set 673 const 673
scoreboard players set 674 const 674
scoreboard players set 675 const 675
scoreboard players set 676 const 676
scoreboard players set 677 const 677
scoreboard players set 678 const 678
scoreboard players set 679 const 679
scoreboard players set 680 const 680
scoreboard players set 681 const 681
scoreboard players set 682 const 682
scoreboard players set 683 const 683
scoreboard players set 684 const 684
scoreboard players set 685 const 685
scoreboard players set 686 const 686
scoreboard players set 687 const 687
scoreboard players set 688 const 688
scoreboard players set 689 const 689
scoreboard players set 690 const 690
scoreboard players set 691 const 691
scoreboard players set 692 const 692
scoreboard players set 693 const 693
scoreboard players set 694 const 694
scoreboard players set 695 const 695
scoreboard players set 696 const 696
scoreboard players set 697 const 697
scoreboard players set 698 const 698
scoreboard players set 699 const 699
scoreboard players set 700 const 700
scoreboard players set 701 const 701
scoreboard players set 702 const 702
scoreboard players set 703 const 703
scoreboard players set 704 const 704
scoreboard players set 705 const 705
scoreboard players set 706 const 706
scoreboard players set 707 const 707
scoreboard players set 708 const 708
scoreboard players set 709 const 709
scoreboard players set 710 const 710
scoreboard players set 711 const 711
scoreboard players set 712 const 712
scoreboard players set 713 const 713
scoreboard players set 714 const 714
scoreboard players set 715 const 715
scoreboard players set 716 const 716
scoreboard players set 717 const 717
scoreboard players set 718 const 718
scoreboard players set 719 const 719
scoreboard players set 720 const 720
scoreboard players set 721 const 721
scoreboard players set 722 const 722
scoreboard players set 723 const 723
scoreboard players set 724 const 724
scoreboard players set 725 const 725
scoreboard players set 726 const 726
scoreboard players set 727 const 727
scoreboard players set 728 const 728
scoreboard players set 729 const 729
scoreboard players set 730 const 730
scoreboard players set 731 const 731
scoreboard players set 732 const 732
scoreboard players set 733 const 733
scoreboard players set 734 const 734
scoreboard players set 735 const 735
scoreboard players set 736 const 736
scoreboard players set 737 const 737
scoreboard players set 738 const 738
scoreboard players set 739 const 739
scoreboard players set 740 const 740
scoreboard players set 741 const 741
scoreboard players set 742 const 742
scoreboard players set 743 const 743
scoreboard players set 744 const 744
scoreboard players set 745 const 745
scoreboard players set 746 const 746
scoreboard players set 747 const 747
scoreboard players set 748 const 748
scoreboard players set 749 const 749
scoreboard players set 750 const 750
scoreboard players set 751 const 751
scoreboard players set 752 const 752
scoreboard players set 753 const 753
scoreboard players set 754 const 754
scoreboard players set 755 const 755
scoreboard players set 756 const 756
scoreboard players set 757 const 757
scoreboard players set 758 const 758
scoreboard players set 759 const 759
scoreboard players set 760 const 760
scoreboard players set 761 const 761
scoreboard players set 762 const 762
scoreboard players set 763 const 763
scoreboard players set 764 const 764
scoreboard players set 765 const 765
scoreboard players set 766 const 766
scoreboard players set 767 const 767
scoreboard players set 768 const 768
scoreboard players set 769 const 769
scoreboard players set 770 const 770
scoreboard players set 771 const 771
scoreboard players set 772 const 772
scoreboard players set 773 const 773
scoreboard players set 774 const 774
scoreboard players set 775 const 775
scoreboard players set 776 const 776
scoreboard players set 777 const 777
scoreboard players set 778 const 778
scoreboard players set 779 const 779
scoreboard players set 780 const 780
scoreboard players set 781 const 781
scoreboard players set 782 const 782
scoreboard players set 783 const 783
scoreboard players set 784 const 784
scoreboard players set 785 const 785
scoreboard players set 786 const 786
scoreboard players set 787 const 787
scoreboard players set 788 const 788
scoreboard players set 789 const 789
scoreboard players set 790 const 790
scoreboard players set 791 const 791
scoreboard players set 792 const 792
scoreboard players set 793 const 793
scoreboard players set 794 const 794
scoreboard players set 795 const 795
scoreboard players set 796 const 796
scoreboard players set 797 const 797
scoreboard players set 798 const 798
scoreboard players set 799 const 799
scoreboard players set 800 const 800
scoreboard players set 801 const 801
scoreboard players set 802 const 802
scoreboard players set 803 const 803
scoreboard players set 804 const 804
scoreboard players set 805 const 805
scoreboard players set 806 const 806
scoreboard players set 807 const 807
scoreboard players set 808 const 808
scoreboard players set 809 const 809
scoreboard players set 810 const 810
scoreboard players set 811 const 811
scoreboard players set 812 const 812
scoreboard players set 813 const 813
scoreboard players set 814 const 814
scoreboard players set 815 const 815
scoreboard players set 816 const 816
scoreboard players set 817 const 817
scoreboard players set 818 const 818
scoreboard players set 819 const 819
scoreboard players set 820 const 820
scoreboard players set 821 const 821
scoreboard players set 822 const 822
scoreboard players set 823 const 823
scoreboard players set 824 const 824
scoreboard players set 825 const 825
scoreboard players set 826 const 826
scoreboard players set 827 const 827
scoreboard players set 828 const 828
scoreboard players set 829 const 829
scoreboard players set 830 const 830
scoreboard players set 831 const 831
scoreboard players set 832 const 832
scoreboard players set 833 const 833
scoreboard players set 834 const 834
scoreboard players set 835 const 835
scoreboard players set 836 const 836
scoreboard players set 837 const 837
scoreboard players set 838 const 838
scoreboard players set 839 const 839
scoreboard players set 840 const 840
scoreboard players set 841 const 841
scoreboard players set 842 const 842
scoreboard players set 843 const 843
scoreboard players set 844 const 844
scoreboard players set 845 const 845
scoreboard players set 846 const 846
scoreboard players set 847 const 847
scoreboard players set 848 const 848
scoreboard players set 849 const 849
scoreboard players set 850 const 850
scoreboard players set 851 const 851
scoreboard players set 852 const 852
scoreboard players set 853 const 853
scoreboard players set 854 const 854
scoreboard players set 855 const 855
scoreboard players set 856 const 856
scoreboard players set 857 const 857
scoreboard players set 858 const 858
scoreboard players set 859 const 859
scoreboard players set 860 const 860
scoreboard players set 861 const 861
scoreboard players set 862 const 862
scoreboard players set 863 const 863
scoreboard players set 864 const 864
scoreboard players set 865 const 865
scoreboard players set 866 const 866
scoreboard players set 867 const 867
scoreboard players set 868 const 868
scoreboard players set 869 const 869
scoreboard players set 870 const 870
scoreboard players set 871 const 871
scoreboard players set 872 const 872
scoreboard players set 873 const 873
scoreboard players set 874 const 874
scoreboard players set 875 const 875
scoreboard players set 876 const 876
scoreboard players set 877 const 877
scoreboard players set 878 const 878
scoreboard players set 879 const 879
scoreboard players set 880 const 880
scoreboard players set 881 const 881
scoreboard players set 882 const 882
scoreboard players set 883 const 883
scoreboard players set 884 const 884
scoreboard players set 885 const 885
scoreboard players set 886 const 886
scoreboard players set 887 const 887
scoreboard players set 888 const 888
scoreboard players set 889 const 889
scoreboard players set 890 const 890
scoreboard players set 891 const 891
scoreboard players set 892 const 892
scoreboard players set 893 const 893
scoreboard players set 894 const 894
scoreboard players set 895 const 895
scoreboard players set 896 const 896
scoreboard players set 897 const 897
scoreboard players set 898 const 898
scoreboard players set 899 const 899
scoreboard players set 900 const 900
scoreboard players set 901 const 901
scoreboard players set 902 const 902
scoreboard players set 903 const 903
scoreboard players set 904 const 904
scoreboard players set 905 const 905
scoreboard players set 906 const 906
scoreboard players set 907 const 907
scoreboard players set 908 const 908
scoreboard players set 909 const 909
scoreboard players set 910 const 910
scoreboard players set 911 const 911
scoreboard players set 912 const 912
scoreboard players set 913 const 913
scoreboard players set 914 const 914
scoreboard players set 915 const 915
scoreboard players set 916 const 916
scoreboard players set 917 const 917
scoreboard players set 918 const 918
scoreboard players set 919 const 919
scoreboard players set 920 const 920
scoreboard players set 921 const 921
scoreboard players set 922 const 922
scoreboard players set 923 const 923
scoreboard players set 924 const 924
scoreboard players set 925 const 925
scoreboard players set 926 const 926
scoreboard players set 927 const 927
scoreboard players set 928 const 928
scoreboard players set 929 const 929
scoreboard players set 930 const 930
scoreboard players set 931 const 931
scoreboard players set 932 const 932
scoreboard players set 933 const 933
scoreboard players set 934 const 934
scoreboard players set 935 const 935
scoreboard players set 936 const 936
scoreboard players set 937 const 937
scoreboard players set 938 const 938
scoreboard players set 939 const 939
scoreboard players set 940 const 940
scoreboard players set 941 const 941
scoreboard players set 942 const 942
scoreboard players set 943 const 943
scoreboard players set 944 const 944
scoreboard players set 945 const 945
scoreboard players set 946 const 946
scoreboard players set 947 const 947
scoreboard players set 948 const 948
scoreboard players set 949 const 949
scoreboard players set 950 const 950
scoreboard players set 951 const 951
scoreboard players set 952 const 952
scoreboard players set 953 const 953
scoreboard players set 954 const 954
scoreboard players set 955 const 955
scoreboard players set 956 const 956
scoreboard players set 957 const 957
scoreboard players set 958 const 958
scoreboard players set 959 const 959
scoreboard players set 960 const 960
scoreboard players set 961 const 961
scoreboard players set 962 const 962
scoreboard players set 963 const 963
scoreboard players set 964 const 964
scoreboard players set 965 const 965
scoreboard players set 966 const 966
scoreboard players set 967 const 967
scoreboard players set 968 const 968
scoreboard players set 969 const 969
scoreboard players set 970 const 970
scoreboard players set 971 const 971
scoreboard players set 972 const 972
scoreboard players set 973 const 973
scoreboard players set 974 const 974
scoreboard players set 975 const 975
scoreboard players set 976 const 976
scoreboard players set 977 const 977
scoreboard players set 978 const 978
scoreboard players set 979 const 979
scoreboard players set 980 const 980
scoreboard players set 981 const 981
scoreboard players set 982 const 982
scoreboard players set 983 const 983
scoreboard players set 984 const 984
scoreboard players set 985 const 985
scoreboard players set 986 const 986
scoreboard players set 987 const 987
scoreboard players set 988 const 988
scoreboard players set 989 const 989
scoreboard players set 990 const 990
scoreboard players set 991 const 991
scoreboard players set 992 const 992
scoreboard players set 993 const 993
scoreboard players set 994 const 994
scoreboard players set 995 const 995
scoreboard players set 996 const 996
scoreboard players set 997 const 997
scoreboard players set 998 const 998
scoreboard players set 999 const 999
scoreboard players set 1000 const 1000
scoreboard players set 1024 const 1024
scoreboard players set 2048 const 2048
scoreboard players set 4096 const 4096
scoreboard players set 8192 const 8192
scoreboard players set 10000 const 10000
scoreboard players set 16384 const 16384
scoreboard players set 32768 const 32768
scoreboard players set 65536 const 65536
scoreboard players set 100000 const 100000
scoreboard players set 131072 const 131072
scoreboard players set 262144 const 262144
scoreboard players set 524288 const 524288
scoreboard players set 1000000 const 1000000
scoreboard players set 1048576 const 1048576
scoreboard players set 2097152 const 2097152
scoreboard players set 4194304 const 4194304
scoreboard players set 8388608 const 8388608
scoreboard players set 10000000 const 10000000
scoreboard players set 16777216 const 16777216
scoreboard players set 33554432 const 33554432
scoreboard players set 67108864 const 67108864
scoreboard players set 100000000 const 100000000
scoreboard players set 134217728 const 134217728
scoreboard players set 268435456 const 268435456
scoreboard players set 536870912 const 536870912
scoreboard players set 1000000000 const 1000000000
scoreboard players set 1073741824 const 1073741824
scoreboard players set max const 2147483647
scoreboard players set min const -2147483648
scoreboard players set -1 const -1

# SET UP VARIABLES
scoreboard objectives add vars dummy
scoreboard objectives add change dummy

# KILL EXISTING ITEM HOLDERS
kill @e[tag=item_holder]

summon armor_stand 910.70200396 65.47731947 -151.54544563 {Pose: {Head: [-132.38221239173416f, 1.5974228389143017f, 0.45140818256010107f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.54134347 64.94650908 -151.67681379 {Pose: {Head: [-100.40780002519716f, -69.05315566859812f, 33.13928855024654f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.33922998 65.56980210 -151.76413469 {Pose: {Head: [-179.60477987679604f, 1.1100424922506293f, 0.007165898955174975f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.07637237 65.25813812 -151.57020203 {Pose: {Head: [-110.15166226999042f, -24.111714749625975f, 6.657175722328982f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.90423842 65.39032685 -151.30918104 {Pose: {Head: [-118.62020491395866f, -0.0975978409260886f, 5.164890705549283f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.07386398 65.36913907 -151.39557050 {Pose: {Head: [-118.64277121872017f, -5.7497890848786355f, 5.201658936881367f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.57793200 65.59046376 -151.71694985 {Pose: {Head: [179.6547013871412f, -0.38842660129239853f, 8.01788445153825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.08057357 64.56776296 -152.64520671 {Pose: {Head: [-91.68866873333164f, 103.18861173843997f, -2.269537063035177f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.70709181 65.07753720 -151.39837135 {Pose: {Head: [-94.66072685644735f, -2.0484674396083387f, 4.933127651659227f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.59913827 65.41109164 -151.46908415 {Pose: {Head: [-124.52902985120284f, -0.11426304821018862f, -0.04708829171361542f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.58543906 65.37276790 -151.56774205 {Pose: {Head: [-124.52411676084583f, 5.267173873061556f, -3.3731308680509278f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.65650283 65.56939863 -151.73850662 {Pose: {Head: [-179.92385156933213f, -7.051141755822921f, 0.19083281411340494f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.53735951 65.07983365 -151.64735539 {Pose: {Head: [-107.9437674455427f, -44.64343726019217f, 20.946875785496715f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.15161314 64.43319169 -152.39466778 {Pose: {Head: [-91.9167932527731f, -101.62352194867287f, 18.47876241393127f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.87120161 65.03320089 -151.30525859 {Pose: {Head: [-93.43753684626974f, -25.700516760375447f, 1.5018963865040569f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.87753131 65.56943754 -151.73341192 {Pose: {Head: [-179.6935819597533f, -6.110659288571659f, 0.005303552865195479f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.12013522 65.57128505 -151.72695463 {Pose: {Head: [-179.869911243662f, -3.93320787648324f, -0.7109953859694836f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.85343199 64.74859739 -151.84409418 {Pose: {Head: [-108.86760934738606f, -20.36713104500219f, 0.9766984299435635f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.22983461 64.54951688 -152.17374979 {Pose: {Head: [-93.133778922695f, 48.94396449373876f, -0.11121188808547552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.73964310 64.23907262 -152.79026071 {Pose: {Head: [87.325476555981f, -6.447521408079743f, -9.941087884977883f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.05225970 65.41861886 -151.46449947 {Pose: {Head: [-125.35319566456685f, -10.364518671106985f, 0.09308004272746839f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.15002599 65.41746182 -151.44121068 {Pose: {Head: [-125.49988258120156f, -9.491909209288476f, -0.40593094942000424f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.44944633 65.56846829 -151.73925739 {Pose: {Head: [-179.95434268082587f, -7.2775640750816555f, 0.011525485861587543f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.29046085 64.09832498 -152.84245341 {Pose: {Head: [89.10435281360587f, -1.5615666831377109f, 0.7036113050404726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.22914481 63.98315938 -152.41890743 {Pose: {Head: [90.98558539531766f, 68.214840238425f, 51.37298299562878f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.22414260 65.07784021 -151.48468901 {Pose: {Head: [-94.35621310743888f, -0.32995896881759995f, 0.23325573121614024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.43647864 64.58387456 -151.91249346 {Pose: {Head: [-92.8501076419813f, 22.839064747535918f, 1.4179056660878322f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.75730202 65.28224442 -151.65667890 {Pose: {Head: [-108.06008774559206f, -40.214197399063096f, 4.788767027122972f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.05559923 65.18324297 -151.60683162 {Pose: {Head: [-105.38708640101581f, -49.72650503047684f, 14.39341991651996f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.41648867 64.20773942 -152.81309874 {Pose: {Head: [89.34807043322768f, -28.420522833235673f, 2.894531405413321f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.43234545 65.06508567 -151.34184787 {Pose: {Head: [-94.39871252406414f, -11.113066627647145f, 0.5293431430676928f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.11840548 65.68541766 -151.41777662 {Pose: {Head: [-139.71939092754965f, 12.774739442581103f, -18.45025865008779f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.92716361 65.12727405 -151.94419351 {Pose: {Head: [-101.95125430627117f, -75.73079712549524f, 14.721577284767173f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.17739556 64.59195107 -152.22550661 {Pose: {Head: [-92.30660102728258f, -90.507841773338f, -3.601223562530848f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.66391141 65.47959741 -151.50592440 {Pose: {Head: [-132.46928172280542f, 1.1493944482974607f, 0.868570996839024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.68961318 65.55273530 -151.57181627 {Pose: {Head: [-133.1808354438069f, -10.04770507723413f, 3.702878624663383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.56033298 65.47671403 -151.47461952 {Pose: {Head: [-132.598308607903f, 2.0048932888784874f, 0.05537794207793048f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.42170044 65.38766226 -151.37745997 {Pose: {Head: [-122.22079472913988f, -7.275123148174888f, 0.2573906331368976f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.25716239 65.70220553 -151.48652396 {Pose: {Head: [-141.7335912978322f, -5.701123943060506f, 4.4017340692116145f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.25127965 64.50979193 -152.16395948 {Pose: {Head: [-89.96104647717279f, -62.05294006015208f, 0.09936989231482929f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.27806696 65.06930610 -152.21362537 {Pose: {Head: [-179.6772715905506f, 0.04460872534385347f, 0.03860259522908129f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.20155611 64.62512472 -152.52403135 {Pose: {Head: [86.09846720136676f, -2.339958288551363f, 1.0167417748689371f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.76753510 65.84797921 -151.35710780 {Pose: {Head: [-143.2975482626438f, 0.32245500230866225f, -0.40029683697915436f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.17446822 65.21986552 -151.68501575 {Pose: {Head: [-107.42677937910233f, -41.968620253829876f, 12.404731110266892f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.76934925 65.47702971 -151.42656071 {Pose: {Head: [-132.61402233298026f, 1.6060734594430628f, 0.03081423200583969f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.36846073 65.14111476 -151.20281607 {Pose: {Head: [-93.71258286404387f, -4.54631858310426f, 1.2105974692803756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 905.73328474 64.46269177 -151.74132038 {Pose: {Head: [0.05128704281622011f, -179.89894866914412f, 0.0036323866519368977f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.56985718 64.63573683 -152.18920668 {Pose: {Head: [-33.32394421118042f, 179.85526849665007f, 0.012170989484953317f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.23505091 64.09198212 -151.89218209 {Pose: {Head: [88.15354176786762f, 178.79236567217967f, -0.9172538472245716f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.00068678 64.13043264 -152.49106901 {Pose: {Head: [-80.51254427545942f, -102.8132100333386f, 46.35696036274444f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.35196550 64.17903857 -152.59388579 {Pose: {Head: [-28.970842587038604f, -163.96945820873646f, 29.10475517096088f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.17150932 64.65502096 -151.30243227 {Pose: {Head: [90.03349021978575f, -164.8866064604136f, -4.312373078068721f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.62575891 64.09987311 -151.74036600 {Pose: {Head: [85.06389810246168f, 173.1797494490225f, -4.664023137281112f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.47035228 64.94269517 -152.45105257 {Pose: {Head: [-79.2615602823328f, -151.40927393650924f, 5.719314212349178f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.73029874 64.46272630 -151.84787657 {Pose: {Head: [0.09020220037437461f, -173.59157083650604f, 0.046179932643360795f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.99060844 64.10931100 -152.35170930 {Pose: {Head: [90.04338948762573f, -94.38474736089793f, -0.016798727212091982f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.76205012 64.99903912 -151.71179218 {Pose: {Head: [146.47603804374774f, -170.08668718528682f, 19.014494745337142f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.14627565 64.08550828 -151.83379604 {Pose: {Head: [85.46863779009696f, 175.78716750514567f, -0.5128552231791752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.91783425 64.21220127 -152.28730875 {Pose: {Head: [-91.99413869407688f, -87.42123169255711f, 48.44054181663596f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.53465347 64.82952566 -152.23057658 {Pose: {Head: [-43.674651968670375f, -174.61829133291042f, 5.6426422444842235f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.78170297 64.07558861 -152.56850357 {Pose: {Head: [-23.428233543528698f, -179.88552562814897f, 0.05819293617929449f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.73218453 65.01188814 -152.33312603 {Pose: {Head: [-90.04743863719771f, 179.61274235776224f, -0.08329384584787762f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.86606047 64.46217317 -151.88134643 {Pose: {Head: [0.17338803118494858f, -162.0693251298345f, -0.021131141713060513f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.93163788 64.50628860 -151.71419183 {Pose: {Head: [0.045666810200644115f, 179.99554094379877f, 6.056540959773277f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.77687572 64.08699573 -152.12498893 {Pose: {Head: [86.90769546014195f, 113.75755590124061f, 1.7620451860017128f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.74970638 64.63486341 -152.15599299 {Pose: {Head: [-33.211203896861264f, -179.88046662847097f, 0.053672699402659424f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.54441380 64.46314169 -151.74254104 {Pose: {Head: [-0.06824841557131808f, 179.99361710453724f, -0.008314829298367682f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.16919059 63.96359526 -152.22179612 {Pose: {Head: [-0.12050929481405487f, -178.30320944426506f, 0.0766576078169496f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.06552316 64.46271701 -151.75802193 {Pose: {Head: [0.05384516302596512f, -174.5390378055908f, -0.0015332581580682304f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.70247652 64.61660084 -152.75348591 {Pose: {Head: [-94.74647255819879f, -179.9513294839544f, -0.352550020739211f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.28122567 65.03501654 -152.44581046 {Pose: {Head: [-89.78268802914171f, -164.3661328125187f, -4.365842269008864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.81440709 64.08357104 -152.38624293 {Pose: {Head: [-10.34372114001298f, 177.475075214635f, -0.40118585763956394f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.75281173 64.13498234 -151.81149955 {Pose: {Head: [91.19005434822454f, -170.79231370377659f, -4.9075209045825865f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.88507269 64.10871463 -151.86280492 {Pose: {Head: [85.02509808689545f, -174.8075866071243f, -0.7652497185142112f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.54636746 63.96413870 -152.23301882 {Pose: {Head: [-0.3390674083425844f, -175.94945554725857f, 0.009517286210698177f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.62866459 65.04492285 -152.38152715 {Pose: {Head: [-88.73804181063237f, -149.8182238170697f, -4.18344360752987f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.75035406 63.96406424 -152.24579627 {Pose: {Head: [-0.3197006652335862f, -175.97836302509427f, -0.0036061950630669136f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.21440945 64.91494355 -152.41402119 {Pose: {Head: [-78.51704978564807f, -162.06389600839762f, 3.6778661749545263f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.56834048 64.48397971 -151.71529309 {Pose: {Head: [-0.07519181576797276f, -179.99426350232937f, 5.111040330626886f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.06457218 64.46276361 -151.78564220 {Pose: {Head: [0.04140039018158538f, -174.54129250309484f, -0.009727441256797371f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.01866049 64.64696154 -152.84570570 {Pose: {Head: [-91.41843101662313f, 145.37706735528383f, 6.232662239725767f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.77345561 64.09746145 -152.07962391 {Pose: {Head: [88.63878488570732f, -173.67708154462014f, -0.02553892627838763f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.28405806 64.93993720 -152.43732299 {Pose: {Head: [-78.29275209252113f, -164.99949670031882f, 3.120627716692071f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.63478678 64.04585186 -152.25235589 {Pose: {Head: [-2.82224375730504f, 179.96242785389478f, -0.36606546592758676f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 900.15943949 65.60252466 -152.22084021 {Pose: {Head: [-97.40420267284715f, 169.93283116847496f, -0.5436973552399205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.73791870 64.73911376 -152.34265216 {Pose: {Head: [-45.0085104742351f, -167.63135153489574f, -0.0017401481186135905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.53580776 64.48890403 -152.38646778 {Pose: {Head: [-29.523037977450166f, -151.34549130544403f, 45.6519629260892f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.54573793 64.26055453 -152.07314696 {Pose: {Head: [93.81218713758427f, 177.81836694980618f, -18.08840098975748f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.68981547 64.65814912 -152.26965293 {Pose: {Head: [-36.81813230934084f, 167.25006967724966f, -0.009532752551165235f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.31450049 64.13597237 -151.88141549 {Pose: {Head: [90.16509144005327f, -164.98706847038122f, -0.3320274923583793f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.63360308 64.48608547 -151.71558862 {Pose: {Head: [-0.09241690972991223f, 179.93068276495578f, -5.438555776947807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.63350319 64.11255875 -151.97601697 {Pose: {Head: [86.79843068219408f, 154.03348317272588f, -2.834964069490092f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.68253761 64.47807880 -151.83315086 {Pose: {Head: [-1.730908943617662f, 168.06723407700133f, 1.8423453004804813f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.65566950 65.50865458 -151.93036114 {Pose: {Head: [-90.11056987668614f, 169.24337548219347f, -0.7539343261513192f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.00509409 65.54814011 -151.93221477 {Pose: {Head: [-87.37750467986704f, -170.37924168464494f, -10.765514770497775f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.60386556 64.50814261 -151.87942975 {Pose: {Head: [-10.618396715405089f, -179.8869207909331f, 0.0191162106877656f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.09037189 64.22904390 -151.99230439 {Pose: {Head: [102.68825379841556f, -123.45915395322943f, -14.318017094824505f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.33673323 64.51741517 -151.90672484 {Pose: {Head: [-10.726147651155015f, -179.41832720365656f, 2.258664201811069f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.45951798 64.20091340 -151.71968966 {Pose: {Head: [88.6994372932545f, 178.6249891656626f, -18.436613892637293f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.93723868 64.10267172 -151.79673197 {Pose: {Head: [84.23049072721044f, -165.37234373474098f, 0.652238890114156f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.19682101 65.63547272 -152.11123305 {Pose: {Head: [-99.51493388553725f, 178.11573129032f, -2.094667500165866f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.79319299 65.01033657 -152.33019239 {Pose: {Head: [-89.91135871517093f, -172.85817624710893f, 0.009189443280938224f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.95762333 64.50750926 -151.85129729 {Pose: {Head: [-10.486160867685498f, 179.75039311184716f, 0.03195690215084658f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.27839930 64.47637855 -151.71484320 {Pose: {Head: [-0.0175096710618318f, -179.97962000075051f, -2.7713696412383673f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.32064701 64.67082606 -152.18643985 {Pose: {Head: [-37.3455973825779f, 160.13701006479639f, -8.661661274423977f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.28908433 65.52293267 -152.04887185 {Pose: {Head: [-91.18566758690271f, 167.18930296172337f, 0.4224677371556689f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.20016614 65.62253276 -152.05110273 {Pose: {Head: [-92.86119502536776f, -179.88743796889585f, -5.029855039135457f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.07613641 65.56054621 -152.12740344 {Pose: {Head: [-90.27479788162788f, -171.89944735526305f, -4.340562618095027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.32029632 65.58140578 -151.88577742 {Pose: {Head: [-91.82908234497043f, -175.52842947919655f, -3.3345551317540694f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 899.88425738 64.34925738 -152.17314250 {Pose: {Head: [108.33766016333836f, -97.15685915356796f, -3.084469140981844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.68094208 64.67624862 -152.31348166 {Pose: {Head: [-38.600114810068355f, -178.04029518167744f, 1.8021807966513188f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.41792686 65.59690921 -151.83726905 {Pose: {Head: [-92.63901661004212f, 172.16606319760132f, -13.192366029811401f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.87397130 65.52545341 -151.97061771 {Pose: {Head: [-90.0657167195956f, 172.1844806680566f, -3.7920249334047895f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.78977631 64.14299179 -151.96391644 {Pose: {Head: [88.47436789004367f, 161.47374429373872f, -2.328795231126221f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.28940339 65.54923498 -151.76373717 {Pose: {Head: [-92.09074423580962f, -179.93211194728872f, -3.2058615628786638f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.78461302 64.66894072 -152.28314921 {Pose: {Head: [-38.500650135637564f, -179.49952522650773f, -0.0007804156199437835f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.29874958 64.16113152 -151.77123447 {Pose: {Head: [85.12662745053379f, 170.31537257660625f, 2.247138980072399f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.30063149 64.37085173 -151.68977757 {Pose: {Head: [89.99904806770499f, 179.95500941320026f, -55.59536020743531f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.25739396 64.65805137 -152.17163914 {Pose: {Head: [-36.81604860480236f, 166.70783761283823f, 0.0008901001276325162f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.53437223 65.53240632 -151.79505208 {Pose: {Head: [-90.87967779888426f, -171.02621347746737f, 4.083867228050978f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.89544405 64.46984915 -151.79867498 {Pose: {Head: [-1.4870821722678524f, 178.7190121886167f, 0.33380909463854136f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.68124834 64.16509301 -152.47210134 {Pose: {Head: [-46.79377759716462f, -130.51044676549742f, 61.585209826470354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 903.18000680 64.14888233 -152.37640839 {Pose: {Head: [88.99389441429926f, 85.83146514236299f, -0.15786620767759615f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.88767392 64.12182416 -151.74529134 {Pose: {Head: [84.29135345394778f, -167.1691429058408f, 0.6831230419747696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.25402569 64.51167265 -151.93595004 {Pose: {Head: [-10.736388183605536f, -179.7023683082062f, 0.7700819367803444f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.53790908 65.58451679 -151.91880053 {Pose: {Head: [-91.12785878807334f, 172.33964708233688f, -11.290566483496182f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.20885240 64.61970055 -152.19998850 {Pose: {Head: [-30.77479626099132f, -176.80670654302102f, -0.0526003631205364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.63124442 64.47092260 -151.76933799 {Pose: {Head: [-2.0855255361137517f, 179.8742400655933f, -0.004984573677416908f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 903.06441414 64.17991059 -152.40493614 {Pose: {Head: [89.03876306702423f, 98.10271947537244f, -0.36195853042238024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.97644968 64.51002822 -151.92423398 {Pose: {Head: [-10.99722666508653f, -173.87401440465163f, -0.02242507115409998f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.00368444 65.68181756 -151.77847705 {Pose: {Head: [-95.55166664488415f, -178.44641202408147f, 9.64662575439001f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.00344631 64.10926051 -151.87412806 {Pose: {Head: [90.05030746884381f, -170.42320389111572f, -0.009928503344365075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.52916920 65.54540907 -152.00492247 {Pose: {Head: [-92.285791143206f, 163.76942938647346f, -6.466073252325347f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.37454466 64.11137316 -152.05978433 {Pose: {Head: [87.17276954198094f, 149.35622160035066f, -2.5902181855141992f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.44672599 64.46621301 -151.71837609 {Pose: {Head: [-0.3028935052193037f, 179.47137029070237f, -0.5949576118851375f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.20032498 65.61145637 -151.81884983 {Pose: {Head: [-92.52391076751458f, 164.0029815791438f, -4.338014586487579f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.65358468 64.65831820 -152.17238096 {Pose: {Head: [-32.700381846803616f, -161.87478860078159f, 0.06578204468624903f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.49041821 64.10799528 -151.92227152 {Pose: {Head: [90.06023474541973f, -163.38280841003836f, 0.014180642482459874f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.23203372 64.49044293 -151.77833819 {Pose: {Head: [-1.2480622662683791f, 175.9668948215393f, -5.926571113533753f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.83956202 64.16676599 -151.97920470 {Pose: {Head: [90.28426208621734f, -159.1824635496366f, -0.5742785809081591f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.13865986 64.46854284 -151.83018719 {Pose: {Head: [-1.4807914096018318f, -176.93143425045488f, 0.00014913911728153077f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.97943444 65.58575390 -152.00657189 {Pose: {Head: [-86.78146667751997f, -167.01225001802266f, -10.574051180736529f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.41384365 65.59014639 -151.77485753 {Pose: {Head: [-90.34334852493123f, -178.70922095246664f, -13.840274571430989f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.73055566 64.50996754 -151.92258803 {Pose: {Head: [-10.993145933953127f, -173.89056614280997f, -0.0059531462727649784f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.73470421 65.51165005 -151.84114402 {Pose: {Head: [-89.99944016551366f, 176.76193766745246f, 0.014535997700277402f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.71834754 64.09473159 -151.97668217 {Pose: {Head: [88.7841617240157f, -173.52814729370067f, -0.16333828288681118f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.32200783 65.56321498 -151.77163009 {Pose: {Head: [-90.08955640000863f, -179.92365895016695f, -8.044151947848128f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.06225445 65.57965325 -151.96161135 {Pose: {Head: [-92.8374232074232f, 170.7738280306079f, -7.651834226342846f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.45155791 65.69212584 -151.75104270 {Pose: {Head: [-95.83709255141837f, 179.4259345590411f, -12.620438187422264f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.15163262 64.46750874 -151.74984543 {Pose: {Head: [-1.2144521435515672f, 176.20924229428812f, -0.0017228328537383017f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.60612947 65.62213610 -152.10805324 {Pose: {Head: [-89.04237479766843f, -171.82467190010277f, -13.243131948829102f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.06307354 65.66084205 -151.75889257 {Pose: {Head: [-95.80920047367087f, -176.91424811313848f, 9.560103035690771f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.88855664 64.02616498 -164.72344499 {Pose: {Head: [-14.286659250725002f, 76.8317563726188f, -0.002124995757220933f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.18179161 63.97253160 -164.58478609 {Pose: {Head: [-2.473552379709191f, 93.07548301195965f, 0.3162368430325722f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86560860 64.06996342 -163.87849468 {Pose: {Head: [-89.99211388410741f, 59.61716263603554f, -82.27882907336287f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72275758 64.56306204 -166.61515482 {Pose: {Head: [-90.03266794487466f, 91.43132970961885f, -0.17965364051739435f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86784381 64.02669228 -164.68607791 {Pose: {Head: [-14.401043073884518f, 76.84229966783197f, -0.0099653871253815f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.55922033 64.53718336 -165.68622021 {Pose: {Head: [-89.98867783855421f, 70.72981793321435f, -0.12290023004056654f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72687511 64.51111844 -166.55495133 {Pose: {Head: [-90.108543902285f, 90.2581250246413f, -0.08289807147088181f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.99985075 63.97294364 -165.31534557 {Pose: {Head: [-2.638005286842321f, 96.74123884224807f, 0.022346215518416163f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.65177657 64.63323071 -166.96908663 {Pose: {Head: [-88.81501316103194f, 86.51221532691316f, 9.833424128005902f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96127351 64.02447437 -164.58320890 {Pose: {Head: [-13.983208689007274f, 74.82887409841508f, -0.02390543388489107f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.23123370 64.03303262 -164.38403507 {Pose: {Head: [-30.453331682598776f, 121.19003900360072f, -66.95155381177871f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.09993769 63.97259151 -165.13401437 {Pose: {Head: [-2.5448294559375757f, 92.73104672476504f, -0.013368321029676762f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.07226436 63.97354125 -164.82636191 {Pose: {Head: [-2.752017195258762f, 73.8725225803854f, -0.03094867946531205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.20782181 63.97204388 -165.46043081 {Pose: {Head: [-2.3623689804766843f, 98.21114763136302f, -1.4268760912837244f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.93858612 63.97247225 -165.34544330 {Pose: {Head: [-2.568214311086197f, 89.66960571549971f, -0.001110331998528373f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.77584431 64.02465991 -165.01975410 {Pose: {Head: [-14.041799599740468f, 83.3626772709426f, -0.02900305845024146f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.05330776 63.97323996 -165.19060824 {Pose: {Head: [-2.6816628542392658f, 86.89702729943902f, -0.0033025898925484296f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83147221 64.04390009 -164.53817221 {Pose: {Head: [-17.673257568149744f, 76.84847988154146f, 0.008952502491013481f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.20207220 63.96254340 -165.81966287 {Pose: {Head: [-0.039657088430792374f, 91.59247296518382f, 0.07833168632521492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.08751096 63.97308278 -165.48106267 {Pose: {Head: [-2.6927427613244928f, 92.49364315022177f, -0.03194689201023486f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.60161926 64.51119993 -166.03235504 {Pose: {Head: [-89.95644455425321f, 92.15399260968516f, 0.026011962653732124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.25240862 63.96387116 -164.70364895 {Pose: {Head: [-0.1353319750509141f, 91.12255943223285f, 0.06444337153372365f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.16122064 63.98546353 -164.33298955 {Pose: {Head: [-3.946496913634361f, 142.0376328374218f, -5.015214158056029f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.17838579 63.97147121 -165.16926542 {Pose: {Head: [-2.241855662099715f, 99.67453070263048f, -0.0017016748469099474f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.15895635 63.98190894 -164.81534370 {Pose: {Head: [-1.8377815442666718f, 93.59218699758577f, 1.5581171907946f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.73562662 64.63204568 -167.28507683 {Pose: {Head: [-89.72824648120739f, 90.51937814952898f, 9.532038397154263f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.28278805 63.96351982 -164.71236040 {Pose: {Head: [-0.16275357978497532f, 90.38697099512167f, 0.006096786050456347f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.14289451 64.03581963 -164.21063157 {Pose: {Head: [-0.5649142357174755f, 149.40881742550772f, -23.009174842562082f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69604641 64.64744176 -167.22792129 {Pose: {Head: [-90.97988859872089f, 98.04806185229577f, 9.51051898372517f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.99372015 63.97277703 -165.49282834 {Pose: {Head: [-2.584013861891885f, 96.80047096225191f, 0.004588119852594351f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.21405586 63.96963421 -165.02361447 {Pose: {Head: [-1.7626506559903052f, 93.35825133677164f, 0.009554930365423974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70347161 64.53851299 -166.52628253 {Pose: {Head: [-90.10112957155333f, 87.22501235438142f, -0.0659387274415782f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.23357168 63.97515509 -166.09136961 {Pose: {Head: [-3.7337678904887834f, 89.26529333279845f, -0.303321384684492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.24968518 63.96940622 -165.15019387 {Pose: {Head: [-1.711637986523457f, 93.36771702157654f, 0.0011221143569506036f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.14579393 63.97224438 -165.21448452 {Pose: {Head: [-2.434458156141722f, 92.8551789183256f, -1.4147036726183784f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.65084037 64.26350910 -166.91311611 {Pose: {Head: [-22.73761425226892f, 92.43263813292604f, 0.0013979032598244298f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.32968882 64.16643557 -167.00285317 {Pose: {Head: [-0.0055459026567385985f, 90.01649421763106f, -8.77163507030359f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.18745281 64.11823607 -164.90559676 {Pose: {Head: [-0.20822462691745436f, 87.05676095653136f, 0.0031476873105318426f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.14834430 64.11756364 -164.89740815 {Pose: {Head: [-0.22567346962829143f, 86.90209004918535f, -0.07102625916067762f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.12012409 64.17559558 -165.98788120 {Pose: {Head: [0.07437443250482183f, 93.23557246004289f, 5.59544883086498f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.06642832 64.11797738 -166.18837355 {Pose: {Head: [-0.19725101610537177f, 86.18802189567505f, -0.01322221028879675f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.15536321 64.11821931 -166.72657032 {Pose: {Head: [-0.18074991339633606f, 92.52919321385772f, 0.013556098270130374f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.04453505 64.11825111 -164.45719055 {Pose: {Head: [-0.2041511910824616f, 88.62456819723101f, 0.014343980448091249f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.11230779 64.11789798 -164.83604754 {Pose: {Head: [-0.1713455316720391f, 86.92238442411644f, -0.010827976994101804f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.08872363 64.11838739 -164.53580437 {Pose: {Head: [-0.18259408694150148f, 86.92305823533279f, 0.029584926943267295f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.13141322 64.11867209 -167.11738879 {Pose: {Head: [-0.29453729259361333f, 92.45428776622182f, -0.000801528406406885f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.96553660 64.11627920 -166.18131622 {Pose: {Head: [-0.25426588355449026f, 87.54020669318348f, -0.21327403186365806f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.16280966 64.11819991 -166.26986169 {Pose: {Head: [-0.24415405947090024f, 96.77101582095018f, -0.019623950515950804f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.90446606 64.17553182 -166.93592897 {Pose: {Head: [-10.21958794785216f, 92.44642722120932f, 0.001596772586299688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.05079348 64.11723679 -165.83602815 {Pose: {Head: [-0.22920122507202204f, 86.21510896923692f, -0.06269925658090283f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

# SET UP ITEM DETECTION
scoreboard objectives add idetect dummy
scoreboard objectives add i0detect dummy
scoreboard objectives add i1detect dummy

# SET UP BITWISE OPERATORS
scoreboard objectives add bitwise dummy

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish

tag @a remove victim-of-dialogue-by-sawyer

tag @a remove victim-of-dialogue-by-apple_sale

tag @a remove victim-of-dialogue-by-berry_sale

tag @a remove victim-of-dialogue-by-melon_sale

tag @a remove victim-of-dialogue-by-cashier




