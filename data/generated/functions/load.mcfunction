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

summon armor_stand 908.89023353 64.60808604 -151.76922068 {Pose: {Head: [89.79307573378675f, -109.54206778763668f, 0.12852707903840038f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.95897822 64.12199978 -152.05262939 {Pose: {Head: [84.79751967064031f, -135.98280688878864f, 1.7405385625650382f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.89589143 65.63949297 -151.38718346 {Pose: {Head: [-87.26874825838317f, 94.37805546852336f, 7.45129607675945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.24551233 65.72786616 -151.24685790 {Pose: {Head: [-95.18462688493808f, 92.38889741532414f, 7.884146558982624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.88630466 65.47293207 -151.43113726 {Pose: {Head: [-84.18306287338737f, 57.976967096773734f, -2.43691556824333f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.68209962 64.16876283 -152.12778330 {Pose: {Head: [87.52422102585297f, -104.97071205411629f, -2.7385367374138747f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.22635885 64.64072260 -151.60443032 {Pose: {Head: [90.29605625575876f, -120.45615992675015f, 0.14318874277833513f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.00254659 64.54914134 -151.82808975 {Pose: {Head: [-90.0454748296293f, 106.21113392235301f, -75.42217353839655f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.79928808 64.39986473 -152.91839959 {Pose: {Head: [91.97977729831707f, 6.007936053974338f, -39.60220512718218f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.70415507 64.11959323 -152.15704928 {Pose: {Head: [92.65344245295643f, -102.19272709912066f, -3.9250250795624844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.86647997 65.59163242 -151.32051471 {Pose: {Head: [-86.55862096575792f, 81.14086869060482f, 6.695038504794776f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.87224598 64.19321019 -151.76213151 {Pose: {Head: [87.23533335523751f, 161.9546380046062f, 3.081012789635541f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.13448073 64.11415313 -152.26069307 {Pose: {Head: [89.31357029945576f, -90.31198357255441f, -2.341520817945928f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.91770362 64.54189654 -151.54869068 {Pose: {Head: [-90.79586980907219f, 89.23582510892221f, -78.7580188969752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.76291055 65.64342951 -151.27108654 {Pose: {Head: [-86.77622363085294f, 93.75516783244623f, 6.23576101033853f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.12675688 64.11876174 -152.21918453 {Pose: {Head: [90.21735606994089f, -89.91134209211266f, -7.292074618033091f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.65941596 65.48838340 -151.51732225 {Pose: {Head: [-90.36955633507719f, 90.07020425648992f, -2.3521764606545887f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.56870501 64.13754812 -152.25465102 {Pose: {Head: [86.09456039186226f, -109.29940236948342f, -2.8296950995326524f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.03866968 65.62803459 -151.39356828 {Pose: {Head: [-92.52252865481935f, 102.97599426132479f, 6.668440806931211f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.68613992 64.02853495 -152.63684163 {Pose: {Head: [60.49952963346154f, -49.36376394565475f, -26.107202375378144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.65033558 65.64069777 -151.21500012 {Pose: {Head: [-87.43674138486647f, 89.56095801378464f, 7.598180012592841f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.20216630 64.09469067 -152.38100729 {Pose: {Head: [87.40344704759644f, -88.4843072695255f, -0.7648069782076731f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.25568654 64.60585290 -152.57830511 {Pose: {Head: [-93.01926026451058f, 119.93729827434225f, 1.4824459981546907f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.76311715 65.64313094 -151.32272222 {Pose: {Head: [-96.24223090532591f, 58.570399235214836f, 3.3002565051531887f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.65337862 65.65464575 -151.21209073 {Pose: {Head: [-90.37627908638804f, 88.84847097714358f, 6.764480078982967f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.14727196 64.13417866 -151.84173772 {Pose: {Head: [85.28042847917503f, -170.62598526373682f, 0.44401845309236637f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.28747031 65.64435492 -151.21652136 {Pose: {Head: [-91.70202300786606f, 89.03132731663125f, 6.218063032398637f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.17119452 65.56703654 -151.33312249 {Pose: {Head: [-85.49939555720375f, 81.98806944310458f, 4.480678933711387f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.20256513 64.55617408 -151.78834776 {Pose: {Head: [-89.93023717178694f, 97.70650729672901f, -70.80886910256824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.82215145 65.59572750 -151.19930186 {Pose: {Head: [-86.90410855741814f, 87.01257928491736f, 6.399017186836641f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.05954117 64.10125270 -152.90008328 {Pose: {Head: [87.63530833582507f, -8.742606860066301f, 1.0527077357617862f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.70227580 64.14934751 -152.61158121 {Pose: {Head: [90.32179954411761f, -88.92385186657835f, -2.2513076175950077f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.72214137 65.61306826 -151.21508101 {Pose: {Head: [-86.64179798152657f, 89.6148579476539f, 6.237727873077794f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.15523875 65.13601799 -151.70887801 {Pose: {Head: [-179.41731786594127f, 0.459798205209029f, -80.95811907085421f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.17300486 65.60113871 -151.36507800 {Pose: {Head: [-90.2313581539524f, 83.40942960076347f, 6.80229591471912f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.07271177 65.59258484 -151.21175504 {Pose: {Head: [-83.57633850847708f, 89.28527758454858f, 6.2760715517263685f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.64612635 65.61002684 -151.46351170 {Pose: {Head: [-97.1890891645286f, 86.85095278592631f, 0.4083814872680305f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.46343254 65.56918413 -151.35612149 {Pose: {Head: [-94.41439898223372f, 87.85072770513867f, 0.666686000082643f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.51496387 65.49555790 -151.89294708 {Pose: {Head: [-89.23544042013052f, 109.87235593279982f, -2.6977148561604305f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.73251209 64.67138868 -151.86456771 {Pose: {Head: [-95.07360708531603f, 90.11123768070401f, -59.22171422770227f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.92574026 65.55563427 -151.34805287 {Pose: {Head: [-82.82755738082861f, 84.47929472346325f, 5.651666312125765f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.64796033 64.72456835 -151.77782638 {Pose: {Head: [-84.10042627796014f, 98.99514580536942f, -43.33570845186187f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.98111634 64.72180708 -151.81673921 {Pose: {Head: [-90.155583800717f, 89.98530882869085f, -43.77870687969769f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.72832343 64.06141367 -152.39924906 {Pose: {Head: [82.48596062768456f, -75.54953169122291f, -7.668733678756881f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.20244992 64.09714047 -152.38235681 {Pose: {Head: [88.167904181851f, -101.18725073212116f, 1.2741761816463975f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.92819242 64.53079244 -151.79138818 {Pose: {Head: [-89.51602194522752f, 106.39144257695337f, -78.67140210764467f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.14378390 64.11125441 -152.71956955 {Pose: {Head: [87.6265373582057f, -68.95799762834588f, -1.8289108737276631f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.90486999 64.34243995 -152.80388375 {Pose: {Head: [93.4159287271239f, 1.6967448123689672f, -30.347948485004093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.55272297 65.48060344 -151.62519161 {Pose: {Head: [-90.15060625539303f, 94.28705598793191f, -2.806507860325602f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.78169691 64.10969083 -152.43982461 {Pose: {Head: [90.00425272273024f, -85.20053851488166f, 0.041203560291316325f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.31961170 64.08935316 -152.81097034 {Pose: {Head: [88.49891429121347f, 36.541200378702406f, -0.06918847269213148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.85151023 64.62232074 -151.88977988 {Pose: {Head: [-90.00831402975315f, 96.54574390311745f, -59.30464920622396f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.72151332 65.70352813 -151.23023910 {Pose: {Head: [-90.11460919384663f, 90.47477805440158f, 6.501288073245974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.78885862 64.14621489 -153.11262955 {Pose: {Head: [90.43255581876562f, -42.15296427302023f, 0.5989866416240712f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.18925479 65.59331950 -151.41909975 {Pose: {Head: [-89.40059527000078f, 101.77325776716773f, 6.915197149050173f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.39203643 64.68803805 -152.98277895 {Pose: {Head: [-93.0603661318813f, -174.39005790927183f, 1.2281065009809047f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.02458233 65.51034099 -151.63131864 {Pose: {Head: [-90.48123569391545f, 66.66219463520142f, -1.8692339784509653f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.30809988 64.79590819 -151.90750414 {Pose: {Head: [-88.07875087306886f, 107.93014605065981f, -52.65258224520379f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.09029227 64.68518520 -151.70602090 {Pose: {Head: [-90.07779078505558f, 89.95865656538133f, -49.15442490659704f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.23468438 64.09566016 -152.41125531 {Pose: {Head: [89.47741475408534f, -86.27509653822038f, -2.807884950968317f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.98733042 64.51046932 -151.55293556 {Pose: {Head: [-90.36902385818429f, 90.09203555001628f, -79.26044519466136f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 911.21995778 65.01499959 -151.74127264 {Pose: {Head: [0f, 179.83443951940257f, -90f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.13261664 64.70263049 -151.72227423 {Pose: {Head: [-91.14794345925986f, 88.57585046557568f, -49.12859553925211f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.96978260 64.17420884 -152.60120444 {Pose: {Head: [93.97414735936142f, -61.40946729294397f, -1.5245161145226969f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.19441694 65.48445070 -151.90478063 {Pose: {Head: [-89.53674099860285f, 118.65041541419502f, -1.564223434899927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.33831675 64.55240868 -151.67076256 {Pose: {Head: [-92.67763836076772f, 94.7835869984507f, -74.62145208336428f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.07876341 64.53349986 -151.77272588 {Pose: {Head: [-89.96020236897618f, 106.0831075904225f, -78.50869756708549f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.16530728 64.16054160 -152.34241369 {Pose: {Head: [87.67475736934675f, -99.93885069283445f, -3.094026024173864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.21033598 64.66748512 -151.96661691 {Pose: {Head: [-90.0369219442461f, 105.59719551322785f, -54.28496697463652f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.21880178 64.53786949 -151.74525286 {Pose: {Head: [-90.15756881339526f, 97.4720012812715f, -74.50097333939445f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.61886164 65.58864961 -151.38099512 {Pose: {Head: [-86.67704420372489f, 101.77426029782497f, 7.457794264673093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.76307617 65.22404688 -151.35098767 {Pose: {Head: [93.55119700319479f, 89.99424572993122f, 5.930567563947579f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.25428065 64.08573426 -152.56817694 {Pose: {Head: [89.38901511769147f, -85.3987984973741f, -1.5990519928859204f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.83346977 64.31205477 -152.95517547 {Pose: {Head: [91.28546468881729f, -1.6456550855502392f, -31.239020139559464f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.61021975 65.01256037 -151.71983667 {Pose: {Head: [-90.10649452946527f, 90.0901342103299f, 0.012486996204972116f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.80605551 65.67745680 -151.24057842 {Pose: {Head: [-90.22533702474963f, 91.63749972717946f, 6.537626199324766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.62192876 64.57725738 -151.84788272 {Pose: {Head: [85.58095280187264f, -91.90386630119761f, -1.258609618313818f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.26009512 65.64356032 -151.30695465 {Pose: {Head: [-90.74986408581366f, 89.99784878415021f, 6.881961535880545f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.11143407 65.47830504 -151.60329336 {Pose: {Head: [-89.37635022576934f, 94.39815417698637f, -2.3123262093846537f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.00165200 65.55665474 -151.55303728 {Pose: {Head: [-87.02301424551052f, 93.1877987103226f, 4.829746165270133f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.41656731 65.02251202 -151.71465917 {Pose: {Head: [0f, 180.02702623997112f, -90f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 904.19040275 65.55157346 -151.83390206 {Pose: {Head: [-89.32711613478993f, 174.33293722049757f, 0.14654427194101124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.40825720 64.52989094 -152.00886401 {Pose: {Head: [-15.0110020978476f, -175.89577100651726f, 0.0011967538000286686f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.09225716 64.10997378 -151.72477526 {Pose: {Head: [90.27480722028977f, -177.9200068483587f, -0.7858164484595321f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.23653345 64.14146741 -151.84465339 {Pose: {Head: [90.56572378485757f, 170.3426269367539f, 3.70661331832968f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.17558229 64.15168124 -151.72032455 {Pose: {Head: [91.8242719772164f, -168.92762199601054f, -8.249947017161194f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.76681259 65.52720678 -151.98775738 {Pose: {Head: [-90.71777984764844f, 175.27733493649387f, -4.542092480361829f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.67523314 65.66043738 -151.88000896 {Pose: {Head: [-98.83825267006706f, -178.2164357812891f, -4.983356003251351f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.06328344 65.52423564 -152.23801853 {Pose: {Head: [-90.30969784475988f, -179.17401458438255f, -0.8593571528176824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.21440746 65.55398214 -151.78350230 {Pose: {Head: [-86.53135414291191f, -179.87010856448057f, -2.0526220107135043f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.39533896 64.54820604 -152.08051387 {Pose: {Head: [-18.490242099868684f, -176.00526639488467f, -0.00032856584462955f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.61664349 65.54180607 -152.04374965 {Pose: {Head: [-91.31249085015048f, -178.28382550468214f, -3.718368158109736f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.73210165 65.69696825 -151.81735927 {Pose: {Head: [-93.92526099126432f, 173.7388235873457f, 2.0704265185531256f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.24788941 65.68177764 -151.86113867 {Pose: {Head: [-92.58027995017142f, 174.80284880133271f, -0.2939881925113612f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.34557029 64.46411909 -151.71533083 {Pose: {Head: [-0.09050360673077272f, 179.8706858467227f, 0.23630629220645885f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.60037131 64.13862295 -151.70133294 {Pose: {Head: [90.0004191826862f, 178.58826658823864f, -6.895033984397138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.70919132 65.59027189 -152.17438688 {Pose: {Head: [-90.95394140229752f, -171.26777740237566f, -6.392180625442197f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.85047305 65.60531820 -151.78571259 {Pose: {Head: [-93.64445906648908f, 168.84501662187543f, -5.612003580406626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.96561053 64.46613486 -151.71900996 {Pose: {Head: [-0.2808406341309468f, -179.28351939283726f, -0.028804161694506863f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.76694892 64.74683383 -152.32458876 {Pose: {Head: [-50.07896356928319f, -179.95453386729434f, -0.02465678903477324f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.89436224 64.46362373 -151.76166188 {Pose: {Head: [-0.21619737948011078f, 170.53415008956804f, 0.0018642189998573052f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.68690849 64.60657321 -152.20315676 {Pose: {Head: [-24.900720550192815f, 163.20183435562782f, -10.846982592285839f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.75616264 65.69782409 -151.74625641 {Pose: {Head: [-97.89822191879173f, -177.78301339251894f, 8.200675688901088f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.91413412 64.49946808 -151.91253124 {Pose: {Head: [-7.810812874446804f, -174.84514661349118f, 1.2901375547527318f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.29821548 64.70949004 -152.19483064 {Pose: {Head: [-44.701926953351574f, -179.89958951423355f, -0.1515209334667121f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.40366483 64.52266687 -151.93576255 {Pose: {Head: [-13.600651959076815f, -174.1297798494811f, 0.012077044585281076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.60405748 65.54888015 -152.08002189 {Pose: {Head: [-91.42025525268822f, 175.8517651415569f, -6.680236948422447f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.54524735 64.71337750 -152.30107546 {Pose: {Head: [-45.15114731690036f, 170.28475301257612f, -0.02857555105925486f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.46405031 65.69806709 -151.75770901 {Pose: {Head: [-96.90905547966848f, -175.6276161374098f, 8.415530894856731f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.06968288 64.48671024 -151.74479788 {Pose: {Head: [-0.4156658671833232f, -179.24994689451967f, 5.517380037552343f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.74554953 64.74672389 -152.28342464 {Pose: {Head: [-50.07822461601013f, -179.8967797344796f, -0.011635888344029047f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.53111566 64.17184444 -151.72651904 {Pose: {Head: [90.62429665031135f, 178.77994443296757f, 2.939159661112154f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.35444007 64.49748149 -151.90367425 {Pose: {Head: [-8.336417764317877f, -165.31360934004493f, -0.003007661349107748f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.35282323 64.71468724 -152.30666551 {Pose: {Head: [-45.32244801326169f, 168.71359702169957f, -0.03327433089843033f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.57580089 64.52690556 -151.94745882 {Pose: {Head: [-13.712727153892027f, -174.5371957480323f, -0.822183505249692f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.00721610 65.65235640 -151.76712310 {Pose: {Head: [-92.16569941007758f, 179.12075237546605f, -3.105153973599102f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.32540333 64.49708123 -151.88219331 {Pose: {Head: [-8.23714960187503f, -165.31675260468754f, -0.0019292243544207647f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.00539078 64.50565467 -151.73308997 {Pose: {Head: [-0.23346054466985014f, 175.37867567678032f, -0.47480849180388973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.21066379 64.13386477 -151.78426435 {Pose: {Head: [90.32430070769085f, -175.95277411946338f, -0.9549190680996492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.60070737 65.59553077 -151.99475638 {Pose: {Head: [-90.47250153474695f, -175.0583575710768f, -9.102478563651651f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.83893739 65.63211041 -151.79018653 {Pose: {Head: [-92.04815122577264f, 179.70086028618599f, -5.2563102727292375f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.07657876 65.49202457 -151.92882936 {Pose: {Head: [-88.43109683804578f, -177.01075196038335f, -0.8268746175537485f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.75699200 64.70315790 -152.48672159 {Pose: {Head: [-46.23410763092932f, -176.30237077627228f, -13.585103562335988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.44044199 65.70103087 -151.89969781 {Pose: {Head: [-95.35141930086832f, 172.8153884980527f, 9.344799936395404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.44170292 65.52896631 -151.82910182 {Pose: {Head: [-89.91362323692071f, -174.89181636250788f, -4.732257241049344f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.80722070 64.54606419 -152.55324462 {Pose: {Head: [-85.72949002320163f, 99.47876832187086f, 0.15795899737489166f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.98819746 64.49409698 -151.86801419 {Pose: {Head: [-7.5700658742364535f, -179.21899582482257f, -0.02099539141687076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.74007918 64.16115071 -151.75902989 {Pose: {Head: [90.00552557775625f, 179.98923977593938f, 12.53745837232578f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.69110962 64.70451848 -152.23377542 {Pose: {Head: [-43.84949064916648f, 170.44559575119396f, 0.007024207553660747f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.95111462 64.18399014 -151.68353623 {Pose: {Head: [89.82794925408916f, -178.61474392265558f, 4.3102534608834695f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.70568587 65.60322046 -152.01925505 {Pose: {Head: [-93.18557552661038f, 179.57056730321517f, -6.570408426081085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.72389967 64.46284066 -151.74154086 {Pose: {Head: [0.013372259348168053f, -179.94824882100878f, 0.00034346045191632334f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.30997554 65.64648286 -152.02233596 {Pose: {Head: [-89.93094292689561f, 175.52553571724903f, 3.22554304979079f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.77146993 65.60698801 -151.80383133 {Pose: {Head: [-93.85945426829873f, 176.10747633722903f, -5.727024320701413f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.24939684 65.54663634 -152.16177316 {Pose: {Head: [-90.49139829903744f, 179.40822944493289f, -0.6888227272457093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.30554620 65.53880286 -151.79315114 {Pose: {Head: [-90.35114980142167f, 172.05657910471575f, 0.12836603903961635f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.50712513 64.18099554 -152.21473387 {Pose: {Head: [0.0035054130864430036f, -179.99212499765054f, -18.424940022944003f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.28692921 65.61045781 -151.97269670 {Pose: {Head: [-91.29231389683906f, 179.8189908767261f, -2.799208107499164f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.22855165 64.12349090 -151.92546641 {Pose: {Head: [89.75724069286849f, -175.56346139947547f, 3.5486279247192805f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.19861929 64.71612642 -152.31382256 {Pose: {Head: [-45.2750336931282f, 168.97825905534424f, 0.31444169791356236f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.32085166 64.71633808 -152.22569673 {Pose: {Head: [-44.737864350413076f, 178.94001607314527f, -1.509968754201216f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.29109538 64.56052463 -152.14273184 {Pose: {Head: [-20.747653884368702f, -176.02658604648306f, -0.00994991446700803f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.40886656 64.65367755 -152.24487033 {Pose: {Head: [-36.20044692498993f, -165.3583143564423f, 0.04226505343546864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.13640384 65.53416183 -151.89303036 {Pose: {Head: [-89.95835607969315f, -179.81064087098122f, 84.2492513309754f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.41911996 65.51088736 -151.95129505 {Pose: {Head: [-90.19334561763468f, 177.21324747015566f, 0.14940683419650963f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.75697271 65.61859054 -151.98446663 {Pose: {Head: [-90.79080865268307f, -173.4538304518049f, -5.0546779851619705f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.17836923 65.61551198 -152.04327749 {Pose: {Head: [-92.94159276180878f, 178.2631427891032f, -7.310242794244045f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.20477260 65.52629422 -151.92431955 {Pose: {Head: [-90.18771281876954f, -174.9585820203559f, -4.632504166331308f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.21034843 65.60316073 -152.15109589 {Pose: {Head: [-90.14685201618643f, 179.98798801867105f, -2.4178612202699648f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.71790299 64.71418789 -152.26879365 {Pose: {Head: [-43.86790574558908f, 171.11951134649368f, 0.686665823951474f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.97159911 65.68524262 -151.82641939 {Pose: {Head: [-93.66156138274384f, 169.4177400668006f, 5.043602302932187f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.52052486 65.51552264 -152.02203122 {Pose: {Head: [-90.47484706037761f, -176.99654173513045f, -0.5641888478170117f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.63065346 64.14891740 -151.79815889 {Pose: {Head: [89.76065491725916f, -178.33711413734804f, -4.2273496287622105f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.16349732 65.53457837 -151.91875664 {Pose: {Head: [-89.91614326157051f, -179.85906916389806f, 84.25016060474591f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.65531299 64.10879528 -151.88695380 {Pose: {Head: [90.0331894450019f, -177.7624355013182f, 0.1032934323241315f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.48899532 65.57311629 -151.86273656 {Pose: {Head: [-91.12990248858786f, -175.0264234969039f, -3.2099303758500928f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.71068492 64.47878438 -151.71503003 {Pose: {Head: [-0.04782438298392901f, -179.95375737862196f, -3.9126664198649737f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.47270779 65.66061987 -151.77367378 {Pose: {Head: [-94.01398936679199f, 174.57370432096462f, 0.43610007880049906f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.08384227 65.56940780 -152.04029907 {Pose: {Head: [-90.5024818641852f, -174.9486308376736f, 1.788592806337622f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.34747145 64.68112333 -152.23192974 {Pose: {Head: [-40.64616083675322f, -150.85011362455307f, 25.28153600477516f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

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

summon armor_stand 915.78246898 63.58864602 -161.70409011 {Pose: {Head: [-25.640660652864586f, 89.50755144238137f, -0.001579847216644696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.82375106 63.58391497 -161.20074389 {Pose: {Head: [-24.886564499769843f, 86.19066430028005f, -0.0807426575288076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95805157 63.58419132 -161.94059026 {Pose: {Head: [-24.7807559803284f, 91.53763826415285f, 0.11516882089447722f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.97031607 63.58232396 -160.77580527 {Pose: {Head: [-24.558460435922406f, 86.07046792689715f, 0.005314858718577867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85474601 63.58524203 -160.75095377 {Pose: {Head: [-25.07239246428501f, 84.68201279952365f, -0.004069213902556612f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98973301 63.57869114 -161.73655203 {Pose: {Head: [-24.42365356628541f, 90.38893787554137f, -0.2802750398313085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.92301452 63.58400828 -161.26096318 {Pose: {Head: [-24.85057355780323f, 89.70967476841098f, -0.0011751917459796803f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.80790639 63.59399387 -162.07200385 {Pose: {Head: [-26.588223865468457f, 89.92600894066851f, -0.030431054765780393f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86991140 63.58384582 -161.53699047 {Pose: {Head: [-25.591691501695937f, 79.97967104970127f, -1.3092844919893105f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.78104765 63.58707204 -160.87666926 {Pose: {Head: [-25.375403252615637f, 84.64600874406402f, 0.0013978334652045069f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68062229 64.01215722 -162.52916920 {Pose: {Head: [-90.26056385937014f, 92.27005021536937f, -0.07597251550557044f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95474476 63.58301571 -161.25089288 {Pose: {Head: [-24.625184770838246f, 89.48983441147483f, 0.025162115012463647f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98504145 63.58229036 -161.13797177 {Pose: {Head: [-24.61975751690237f, 89.47082090342742f, 0.09030641287869184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85535177 63.58827447 -161.37062013 {Pose: {Head: [-25.573345184981722f, 80.53084815761027f, 0.00482889969971714f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72380095 64.04907940 -162.78066505 {Pose: {Head: [-90.78039192771922f, 89.97078229206475f, -2.0944554679802514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.93921314 63.58347160 -160.79059925 {Pose: {Head: [-24.771280515503108f, 86.20770663877258f, -0.00354157142954044f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81225279 63.58695725 -160.86861096 {Pose: {Head: [-25.359899788678433f, 84.69823391367274f, -0.011084799383128995f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89122516 63.59679424 -161.68801349 {Pose: {Head: [-25.698060040712203f, 88.2833521683852f, 0.7122345951538386f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.92352710 63.58907721 -162.07582414 {Pose: {Head: [-25.76475800765915f, 91.286170975125f, -0.03514081006214803f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86992829 63.59197657 -162.10672652 {Pose: {Head: [-26.21052630573566f, 97.19752292260587f, 0.004423280221378824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90034835 63.64361307 -162.37244442 {Pose: {Head: [-26.21532105322504f, 97.10458839437317f, -0.1774154658239958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.91181802 63.58350519 -160.77655858 {Pose: {Head: [-24.77180717402571f, 86.25815452405715f, -0.0032708743249236956f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69093005 64.03949284 -162.64568125 {Pose: {Head: [-90.44069674490287f, 101.86750575325374f, -0.18197886596995244f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86463269 63.58357395 -161.03980635 {Pose: {Head: [-24.79666554784601f, 86.18515865275994f, -0.04401872655466608f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.89448150 64.63160826 -161.30210603 {Pose: {Head: [-32.65562743901814f, 87.68427725458102f, 0.00003218762906218713f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00927888 64.49695266 -162.20836103 {Pose: {Head: [-8.216472417010118f, 95.59836929593162f, -0.008052554700414691f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03018978 64.54402978 -162.70941542 {Pose: {Head: [-17.68999749249468f, 80.14356216887714f, 0.025447016862020184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.01466017 64.54023947 -162.66299160 {Pose: {Head: [-17.706121401890755f, 76.40002037470971f, -1.6843308828781547f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89886031 64.55808484 -162.56745162 {Pose: {Head: [-20.294286499807328f, 76.24167782492376f, -0.0011694756971381468f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90973662 64.49803667 -162.04739810 {Pose: {Head: [-8.437073281492623f, 95.47146391281436f, 0.004505226940107868f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95095305 64.49751795 -162.18269014 {Pose: {Head: [-8.326864352281016f, 95.47470583082709f, 0.0010445435486840828f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.25360794 64.47226424 -161.78135112 {Pose: {Head: [-2.4257984560621604f, 90.21536338643182f, -0.0005495004237034399f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.12287784 64.48974012 -162.05496100 {Pose: {Head: [-6.594018750992229f, 92.86089525059522f, -0.00009587718617041432f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96383159 64.54390504 -162.68771839 {Pose: {Head: [-17.7140376092172f, 76.93450956610873f, -0.005029094591907667f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.13526658 64.51256273 -162.33508437 {Pose: {Head: [-11.530265237222494f, 90.0026008617059f, 0.002340552241799644f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.21837046 64.47322600 -161.83913906 {Pose: {Head: [-2.6634929194940624f, 92.42901094676074f, 0.0008875188394293818f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87322378 64.49791490 -161.95328472 {Pose: {Head: [-8.420176540323817f, 95.45747512415655f, -0.0016251972665528652f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87603635 64.50759295 -162.47544754 {Pose: {Head: [-10.493530887313906f, 97.65906481937033f, 0.0028855229509571812f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89521906 64.50741821 -162.40381451 {Pose: {Head: [-10.474229541769875f, 97.637985146847f, -0.047122074162525285f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10771162 64.49028464 -162.05559937 {Pose: {Head: [-6.999647308270509f, 92.52541654675088f, -1.6483112931165371f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98033106 64.49756515 -162.20150140 {Pose: {Head: [-8.33939040815512f, 95.46601471565769f, -0.00011425982720090819f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.99965574 64.51884646 -161.87118854 {Pose: {Head: [-7.179878555956456f, 93.3516969933198f, 3.0711373602254914f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.18727528 64.47465958 -161.85621111 {Pose: {Head: [-3.015165485523263f, 92.49525107983085f, 0.0031052305626794296f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06455043 64.49225174 -162.09270389 {Pose: {Head: [-7.160717757563756f, 92.62307054406139f, -0.0026262735072516076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.99110614 64.54396570 -162.44581762 {Pose: {Head: [-17.69261991501955f, 76.20255496663614f, -0.0004578596481233236f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"carrot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.49939485 66.00979454 -159.32492717 {Pose: {Head: [-89.15582894307481f, 84.80052744393994f, -3.4026245468254412f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69813510 65.81212848 -160.25140187 {Pose: {Head: [-59.451812324911224f, 78.28010424931787f, 0.012779620571753492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.97037903 65.54609238 -162.75037185 {Pose: {Head: [-18.103963869335015f, 95.11684263842633f, -0.0045653005429522366f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.05793368 65.53912326 -162.31349972 {Pose: {Head: [-16.934260047080688f, 94.23012078732789f, -0.08468688352958005f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98910224 65.54387921 -162.59296375 {Pose: {Head: [-17.678853171578744f, 94.72758213812858f, 0.0034701895087274055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.92777175 65.54592690 -162.58933442 {Pose: {Head: [-18.068328111328086f, 95.10244329936181f, -0.00018347839633906754f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85445625 65.56602492 -162.88388967 {Pose: {Head: [-21.71730562845939f, 108.62265942346042f, -0.000538738171726291f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72742768 66.01027387 -158.78844277 {Pose: {Head: [-90.01334955953097f, 89.78009143689272f, -0.0874002373514418f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03072869 65.53884165 -161.87865729 {Pose: {Head: [-16.746327760359506f, 94.66507102998293f, -0.008678849237420499f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.93735615 65.54344612 -162.28633940 {Pose: {Head: [-17.7572112203859f, 94.11290407742887f, -0.31833042272476253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.94991200 65.54062998 -161.46304867 {Pose: {Head: [-17.066946728908096f, 89.5110784179691f, 0.005896478671247719f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98309049 65.54203041 -162.11233110 {Pose: {Head: [-17.346313481490714f, 93.77677143599422f, -0.00655767228134263f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84377009 65.54561260 -161.67673321 {Pose: {Head: [-18.022752445271436f, 82.5367173450219f, -0.00586528041758102f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71253265 66.01139909 -159.65641673 {Pose: {Head: [-89.98268041599687f, 94.90779813147978f, -0.004804623015322572f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06235133 65.53554210 -161.48884781 {Pose: {Head: [-16.110498828339296f, 94.54475380227771f, -0.005667929151180065f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.04082808 65.54234586 -162.50647944 {Pose: {Head: [-17.411812782048575f, 94.95693885333138f, -0.012497405378747817f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89265505 65.54284297 -161.78647541 {Pose: {Head: [-17.52030117055675f, 82.5247744735109f, -0.041524261553195385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.07643405 65.53739915 -161.95073390 {Pose: {Head: [-16.689581465064062f, 90.31573161266924f, -0.12625715182682706f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66488376 65.81884269 -160.07466452 {Pose: {Head: [-60.491536167205915f, 78.2124906622918f, -0.027831673778976367f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89458836 65.54580829 -162.53103038 {Pose: {Head: [-18.036614703681725f, 95.09033364433449f, 0.003832965706828454f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98827201 65.53801431 -161.16232398 {Pose: {Head: [-16.58173061475857f, 89.066697213436f, -0.011715454854863848f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00973792 65.54056765 -162.04719765 {Pose: {Head: [-17.071510169999076f, 93.4588238791158f, -0.010527247707458026f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03146825 65.54226331 -162.72785703 {Pose: {Head: [-17.386489300643902f, 94.95834072306837f, 0.0008275525566711988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.67411137 65.62992896 -161.47220649 {Pose: {Head: [-32.539242334202726f, 82.45909194035731f, -0.22161506471744552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98210751 65.53927949 -161.61747400 {Pose: {Head: [-16.853738662449345f, 86.0139653532009f, -0.03663114552541217f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95578378 65.54237335 -162.13698275 {Pose: {Head: [-17.414588074381243f, 93.71200183313616f, -0.015639703263536926f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03072191 65.53799238 -161.48727327 {Pose: {Head: [-16.598852058738387f, 94.03573067086812f, -0.01392408726577081f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72100240 65.63587123 -161.22995512 {Pose: {Head: [-33.32751720535478f, 93.87617170233872f, 0.0006405965161310138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72826564 65.80790209 -160.68179875 {Pose: {Head: [-59.023734895797396f, 90.03726123643213f, -0.047115670553443074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.08211326 65.53482872 -161.15882784 {Pose: {Head: [-16.14218574355251f, 90.27122953212253f, -0.09365503641900119f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84977354 65.55908573 -162.49429519 {Pose: {Head: [-18.056473075263238f, 96.49777498401619f, 1.3115341360028914f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87980128 65.54334643 -161.65652242 {Pose: {Head: [-17.595230002794153f, 82.47193338059532f, -0.006320931851878299f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72130815 65.65732418 -160.89701116 {Pose: {Head: [-36.571683495494746f, 93.86643353004897f, 0.09813170266861823f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69765442 66.03720970 -158.55571494 {Pose: {Head: [-90.03499064168726f, 74.30308608321253f, -0.1431476924710942f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63680212 65.96182411 -159.25176409 {Pose: {Head: [-87.5802814006366f, 100.0676455791975f, -5.662685537554924f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89980297 65.54268463 -161.95454303 {Pose: {Head: [-17.458951408055725f, 82.64207705121103f, 0.0008833250785836634f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 916.06956236 64.50113120 -159.22490701 {Pose: {Head: [-9.129409611953681f, 88.79430400356715f, -0.009359880992387399f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84971814 64.58924672 -160.41795819 {Pose: {Head: [-23.411035316766505f, 88.56545700562697f, 1.2512692711584066f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83721545 64.65670763 -158.62838411 {Pose: {Head: [-36.653056769522834f, 90.2066870211155f, 0.0703670658567949f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.93404961 64.57486091 -159.96284720 {Pose: {Head: [-23.277144072557807f, 96.77957901926523f, -0.0023716946074659106f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83039641 64.67211401 -158.08990074 {Pose: {Head: [-38.967795903238255f, 82.53401854011177f, 0.005121580175977042f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86842064 64.65526116 -158.52328438 {Pose: {Head: [-36.72879601641958f, 89.94167735970996f, -0.13356018342877188f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.73447087 64.66101875 -158.57485610 {Pose: {Head: [-37.24225517790137f, 90.47371101186849f, 0.014848970715998288f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81174125 64.65374633 -158.59625346 {Pose: {Head: [-36.8486204779292f, 89.11851559852944f, -0.9621298090236132f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87312675 64.62007622 -160.17359445 {Pose: {Head: [-23.365501684641472f, 89.55189938569751f, 4.070178247774827f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79988579 64.62465492 -158.88026328 {Pose: {Head: [-36.641831842145265f, 100.1228738245995f, -8.739819653807576f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81138531 64.58727720 -159.90628557 {Pose: {Head: [-25.398807424382458f, 104.03380670359861f, 0.0025098916217858626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.12815956 64.49654625 -159.37262622 {Pose: {Head: [-8.110100317337686f, 89.41991304038278f, 0.007955809130228923f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10078401 64.49766362 -159.26699551 {Pose: {Head: [-8.362758296659734f, 88.85179011754796f, 0.004242454765569434f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.16582664 64.49360502 -159.38367705 {Pose: {Head: [-7.587987058020272f, 89.69232596900011f, -0.6083373908209712f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03376128 64.50322103 -159.36875312 {Pose: {Head: [-9.586087550893728f, 88.27041048975556f, -0.010397396166962607f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.01709593 64.56524212 -160.61469119 {Pose: {Head: [-21.60053701617782f, 89.70149070559555f, 0.047761168310218025f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85318859 64.58014895 -160.85779122 {Pose: {Head: [-24.245893152712057f, 108.47821319349252f, -0.02741560821868611f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10447637 64.50916373 -159.81328141 {Pose: {Head: [-10.826158804073584f, 102.77786853257726f, 0.0043889600037944915f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.76888927 64.64000154 -159.25200311 {Pose: {Head: [-20.601462169842097f, 107.67062316524263f, 7.710196921949706f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00705815 64.56016088 -160.60959316 {Pose: {Head: [-21.87552374738233f, 88.50135173115613f, -2.2736850026387163f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81485701 64.56221153 -159.50845244 {Pose: {Head: [-21.042575658798636f, 107.7667250678591f, -0.001629007742660081f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.97426968 64.56675857 -160.17368390 {Pose: {Head: [-21.847748969252883f, 75.45583595893251f, 0.0021176968445945393f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69932795 64.66169252 -158.45510978 {Pose: {Head: [-37.41386093935627f, 90.41385145522995f, -0.03490346901470218f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96348344 64.56424398 -160.73335312 {Pose: {Head: [-21.937178129385465f, 89.00564426368439f, -0.949446575594917f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.77076579 64.65800327 -158.51225609 {Pose: {Head: [-36.85380781828828f, 90.13082902111714f, -0.029941832972097293f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.77650846 64.57713568 -159.03105669 {Pose: {Head: [-23.672563642199155f, 103.86427959722987f, 0.00020975752263808692f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.18748681 64.49407615 -159.33342483 {Pose: {Head: [-7.6208067243150595f, 89.81370343651427f, -0.011749524749813868f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85786141 64.57609965 -159.84834365 {Pose: {Head: [-23.49079990701088f, 106.45894580472846f, -0.011817220740023953f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.91861657 64.54022832 -159.22294643 {Pose: {Head: [-17.037913132816684f, 87.97279108025789f, -0.019036902504600942f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.82629393 64.57764612 -160.32911696 {Pose: {Head: [-23.75161709418012f, 88.02103638846894f, 0.0019139149441479702f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96154327 64.56611936 -160.34279376 {Pose: {Head: [-21.737983793898945f, 75.48851680104936f, 0.0005724772379921637f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.80120195 64.55903383 -159.31212359 {Pose: {Head: [-20.47338275520774f, 104.84761223084678f, 0.011304697170081255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.80057349 63.63137370 -158.10979453 {Pose: {Head: [-32.739794617373725f, 76.84680893103703f, -0.16048324669638098f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84366677 63.63408469 -158.93319060 {Pose: {Head: [-32.667149071215405f, 89.67374934210571f, -0.11082395507160124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.80821966 63.62991704 -158.22085879 {Pose: {Head: [-32.42875357465422f, 77.51888019106873f, -0.0032643553451690535f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.07680472 63.52441620 -159.52078352 {Pose: {Head: [-13.944771163054385f, 89.0334337294991f, 0.04730242852825288f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83468129 63.63031650 -158.40235641 {Pose: {Head: [-32.47780620724948f, 78.01404870956753f, -0.0022428357315977397f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.97602233 63.54115932 -159.88555224 {Pose: {Head: [-17.15806069063267f, 106.35796790646069f, 0.017954757136224936f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90320271 63.63142895 -158.78065365 {Pose: {Head: [-32.71340157753611f, 89.94250033507156f, 0.005428446988512134f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86573461 63.58702621 -160.31024507 {Pose: {Head: [-25.37201836726486f, 95.1615754503171f, -0.0028812146165333803f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.54499852 63.56239172 -159.37455724 {Pose: {Head: [-38.19640101371911f, 89.83714235788347f, -0.22877563744012466f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84061433 63.63073842 -158.52591423 {Pose: {Head: [-32.564582506034036f, 78.42089152450339f, -0.020230099382728225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.09440680 63.52413651 -159.86094157 {Pose: {Head: [-13.858904819810167f, 86.5667346991258f, 0.030400459968209264f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.91022976 63.59491805 -159.37653821 {Pose: {Head: [-15.69391214178729f, 90.15290319397518f, 6.137479176849385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84737121 63.63054562 -157.80037868 {Pose: {Head: [-32.52462480080335f, 70.88323917240383f, -0.011522690896833094f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90762684 63.62931049 -158.27777453 {Pose: {Head: [-32.22901735497453f, 89.60681144252845f, 0.23472804459389915f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.82071437 63.63075263 -157.77885969 {Pose: {Head: [-32.545805927940116f, 70.78005343794345f, -0.005825171479159499f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.01789694 63.52835446 -159.39505942 {Pose: {Head: [-14.696654410593748f, 88.33467853352055f, 0.023921341053841205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88703096 63.62646688 -158.00362418 {Pose: {Head: [-31.88351170176722f, 84.51000174474473f, -0.024269531604176872f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87164469 63.63146032 -158.87622549 {Pose: {Head: [-32.669175188402654f, 89.92246163207558f, -0.009115351263345176f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10785002 63.52402825 -160.29060402 {Pose: {Head: [-13.904363633911624f, 89.70390314413179f, 0.013416159306672804f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95344289 63.57410232 -160.29669780 {Pose: {Head: [-23.166560191681263f, 94.14386451304148f, -0.0012040789441681644f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.60815910 63.59394840 -158.38920738 {Pose: {Head: [-41.323881157554695f, 85.17632827806042f, -5.488302688108082f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79497534 63.57435416 -159.51930292 {Pose: {Head: [-23.16622056706731f, 91.71328342611851f, 0.013714694093471903f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87767801 63.57472177 -159.97885308 {Pose: {Head: [-23.26916513563744f, 100.81052624374264f, -0.012692813054700724f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90563772 63.58587433 -160.37877417 {Pose: {Head: [-25.148791237465307f, 94.198334779984f, 0.015950626463834224f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.99098757 63.52887302 -159.36349786 {Pose: {Head: [-14.814280580279053f, 88.20036346373114f, -0.00405827695784887f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.76002806 63.63146963 -158.95570991 {Pose: {Head: [-32.66339524436165f, 78.38481618907231f, 0.0000769631141396186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.04938228 63.52688138 -159.36424263 {Pose: {Head: [-14.468236744255174f, 88.3898935805787f, -0.0225177685023893f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.77178606 63.59578812 -160.22503582 {Pose: {Head: [-26.842736370577917f, 97.17616461663309f, -0.0005121935221763724f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.28495174 63.48883053 -159.28123460 {Pose: {Head: [-0.14359074984573458f, 89.99030567605598f, -0.008425724530222615f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.74453417 63.63036028 -158.84949402 {Pose: {Head: [-32.48985455915908f, 79.62793413183688f, -0.004091593091231544f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81264213 63.57684869 -159.94251872 {Pose: {Head: [-23.531126068930874f, 108.45280032869138f, 0.049320511470460196f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.78867961 63.63050349 -158.45847348 {Pose: {Head: [-32.51028904286436f, 77.77194719950685f, -0.007447377303373128f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.82107697 63.58685789 -160.23258956 {Pose: {Head: [-25.34705853566205f, 97.27791176581539f, -0.012227800422714857f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"potato", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.63371164 64.17850681 -156.57765614 {Pose: {Head: [-89.73856895115345f, 90.48353812355698f, 1.0801870454056843f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.67146871 64.04588783 -156.62045736 {Pose: {Head: [-89.54378158470688f, 89.21254639379306f, -6.658028089742556f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.55373481 64.09058877 -156.05164087 {Pose: {Head: [-89.40330944786625f, 90.48030243653092f, -5.052730770959109f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70519230 63.99183663 -155.25131286 {Pose: {Head: [-89.43897659938601f, 93.19389601734501f, -1.098776859553625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.65551113 64.12155439 -156.85205093 {Pose: {Head: [-89.72261957997043f, 87.1875544926728f, 5.900597047580927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71968741 63.97892033 -156.57168332 {Pose: {Head: [-89.5208348390508f, 90.0365302049488f, -2.1989005470541128f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69081751 63.99102684 -156.55844948 {Pose: {Head: [-89.77751516010377f, 82.9647424848927f, -3.2809744157841956f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.57490587 64.00835953 -155.56256084 {Pose: {Head: [-89.61230369606241f, 95.55358034933447f, -3.4811344063703675f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58884494 63.97638963 -156.97232271 {Pose: {Head: [-89.84823874629221f, 87.11000124522768f, -4.732262760145038f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.62950610 64.02263923 -155.73337309 {Pose: {Head: [-88.7589730799531f, 76.96216026601391f, 1.652114599176096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.62529761 64.06156355 -155.80036239 {Pose: {Head: [-89.16425361889856f, 93.0280498304834f, -3.224783289715716f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58425214 63.93028988 -157.34402615 {Pose: {Head: [-87.65925570717003f, 90.91311480683659f, -18.21526850328696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.64575799 64.10001687 -156.18899153 {Pose: {Head: [-89.62793537273895f, 89.92541399888033f, -5.410784381101991f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68514626 63.99922402 -155.30174738 {Pose: {Head: [-89.77186812803876f, 77.06785657088551f, -2.854884359676027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61536187 64.06924044 -154.72137501 {Pose: {Head: [-79.69398016592734f, 59.97436480916896f, 15.793175718791863f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61591964 64.04676769 -155.37890241 {Pose: {Head: [-91.07478044863005f, 76.05699209488583f, -3.7503527917930537f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68895987 64.06292499 -155.52270726 {Pose: {Head: [-90.1889131872738f, 87.03938661964159f, -3.5328083848619958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61588657 63.98463040 -157.33090415 {Pose: {Head: [-90.02082995800653f, 90.72587734207332f, -3.9345383306538384f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70617119 64.08018691 -156.43278271 {Pose: {Head: [-89.7786938427182f, 85.42545421521092f, 1.8239756595435943f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58137464 64.06514194 -156.73792368 {Pose: {Head: [-89.77446270579699f, 86.45886737008355f, -5.92416456230422f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.54038139 64.06768021 -155.88014677 {Pose: {Head: [-88.8430597189576f, 94.99456625666078f, -6.4629165998838625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63637299 64.12153467 -156.23911579 {Pose: {Head: [-89.06946756915578f, 92.96364206367916f, 2.999127391488378f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58780360 64.03012996 -155.95145157 {Pose: {Head: [-89.77690562816068f, 86.50586011314196f, -3.286344171197492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63715370 64.00139359 -157.50190671 {Pose: {Head: [-90.06549672190705f, 90.90695926513615f, -3.7465105083214008f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.64674265 64.00934915 -156.11117966 {Pose: {Head: [-89.18410249209849f, 92.76371859291864f, -2.053359890642266f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68267561 64.10695369 -157.15684182 {Pose: {Head: [-89.67896724636523f, 87.29388665802298f, 4.15152697882427f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72904597 64.00172268 -156.13370374 {Pose: {Head: [-88.9363329189596f, 89.97933200750367f, 1.1935017186673933f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58393016 64.07998319 -155.64097179 {Pose: {Head: [-88.42370002539394f, 98.43999843140196f, -4.580166049660546f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.52267096 64.06852118 -156.97313634 {Pose: {Head: [-90.23144033541983f, 83.21220980428703f, -5.846472136053615f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66948372 64.20200167 -156.35241017 {Pose: {Head: [-89.73725518496943f, 90.51605850395796f, 1.143053438747457f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61161304 64.09452958 -156.99579830 {Pose: {Head: [-90.44760530626094f, 81.61150749378697f, -5.882646106885968f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.67130038 64.24316997 -155.97977624 {Pose: {Head: [-90.02533747912376f, 93.2262963493875f, 4.27966060987391f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68510881 64.09744432 -156.41634825 {Pose: {Head: [-89.46794065061128f, 91.00998063723428f, 1.61584142478914f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.78527368 64.54677474 -156.46048101 {Pose: {Head: [-18.210687968097773f, 79.06525318727336f, 0.00681794016092957f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83210208 64.53642391 -157.40695826 {Pose: {Head: [-16.296994342231052f, 106.75418322737065f, -0.04388430909086751f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06128760 64.51364232 -157.18399225 {Pose: {Head: [-13.708228410945878f, 91.3511859022853f, -5.985030261699726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85822446 64.53703536 -156.70008755 {Pose: {Head: [-16.09087960903244f, 91.81631999537f, 0.15987800921243048f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.08968055 64.52056547 -157.77157062 {Pose: {Head: [-13.18256992589296f, 88.91959465877129f, -0.011419799710408235f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.04119143 64.51621613 -157.03642584 {Pose: {Head: [-12.325347450041958f, 100.67230344015606f, -0.0162446045056517f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84469226 64.53806538 -157.06817107 {Pose: {Head: [-16.41750825502667f, 94.11890677985217f, 0.09812139020091551f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.18475144 64.48904311 -156.93894894 {Pose: {Head: [-6.461739872925388f, 94.55588705605868f, -0.014825243966331598f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66654169 65.01171747 -155.42348926 {Pose: {Head: [-90.00003824576635f, 86.1811027754775f, 7.643812403604188e-7f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96055996 64.52450259 -157.53819012 {Pose: {Head: [-13.944829352261184f, 93.11359776617122f, 0.005558444052033972f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.04557607 64.49931262 -156.28932368 {Pose: {Head: [-7.034526107166258f, 86.83632075388603f, 0.9072697284834613f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.12802198 64.49614420 -156.15591150 {Pose: {Head: [-6.7667363844690955f, 82.7507753518885f, 0.6704242734458673f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03820794 64.52229316 -157.50433803 {Pose: {Head: [-13.415663205496404f, 88.1872766378126f, 0.05928581993095626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89661237 64.53456815 -156.81748972 {Pose: {Head: [-15.91299695670371f, 89.17386931632075f, 0.002949321746254253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.08357016 64.49092983 -156.27955792 {Pose: {Head: [-6.864054767697603f, 86.40221853551748f, -0.0010852318180882227f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81246653 64.53568679 -157.23966840 {Pose: {Head: [-16.12687293663629f, 106.58264592637846f, 0.005140420007016607f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.92104210 64.53640262 -157.80401447 {Pose: {Head: [-16.265453787581066f, 100.6010165297671f, 0.006425533782917731f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83003608 64.54127999 -157.69991459 {Pose: {Head: [-17.190923346922567f, 101.17713626578352f, 0.0021217130145038056f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.13390581 64.48996874 -156.37261855 {Pose: {Head: [-6.648350943591536f, 78.77188190543866f, 0.010957130717589159f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.20539563 64.48750598 -156.25797473 {Pose: {Head: [-6.086864529195717f, 90.05129823518357f, -0.004516326572464974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00323052 64.52392091 -157.78405159 {Pose: {Head: [-13.838473666557785f, 93.14326753263698f, -0.002204342858880536f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.99735485 64.54954613 -156.72678606 {Pose: {Head: [-8.452806300622415f, 109.32432106801407f, 5.939739090472893f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.11833849 64.51943006 -157.80933461 {Pose: {Head: [-12.897091108412354f, 89.31681458338633f, 0.08171752955271552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06678091 64.52137253 -157.52003925 {Pose: {Head: [-13.334404846087203f, 88.27082323679845f, -0.0001425761891209528f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.97961038 64.52493375 -157.34165617 {Pose: {Head: [-14.054064644843121f, 92.32190960244247f, -0.012791843075284696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.21386513 64.48592546 -156.61738425 {Pose: {Head: [-6.054230854375663f, 94.31588763189555f, -2.570725291493387f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.93860175 64.52761015 -156.98624497 {Pose: {Head: [-14.563502754575529f, 89.24709758701914f, 0.004206701481696022f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.15519611 64.48839882 -156.78151132 {Pose: {Head: [-6.512488136961567f, 92.48062047609368f, -1.334033725134973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.80041123 64.53938820 -156.74894438 {Pose: {Head: [-16.835482904320003f, 84.97164538925195f, -0.0015921354735434169f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.27279305 64.48681705 -157.25044021 {Pose: {Head: [-6.644583659742927f, 93.36651126294454f, -9.372074226039148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86754908 64.53768470 -157.69985691 {Pose: {Head: [-16.522315373496017f, 101.18473917536527f, -0.008608810003306175f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.91162004 64.52725342 -157.28204330 {Pose: {Head: [-14.50688170360735f, 93.08504581007087f, -0.006759746782959903f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.51841113 63.74551236 -153.97584374 {Pose: {Head: [-37.960551966835105f, 101.66095983278449f, 15.330517091804383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70757685 64.01065476 -154.68482893 {Pose: {Head: [-89.97388577728272f, 96.86676454561588f, -0.06209672129389281f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69478995 64.03757939 -151.64392393 {Pose: {Head: [-89.93860168415621f, 77.92982774075227f, -0.007283774826463253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72002537 64.01102080 -152.04265677 {Pose: {Head: [-89.9557482288381f, 91.1397859371698f, 0.027002549346101242f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.91948810 63.58054164 -153.82284978 {Pose: {Head: [-24.849278061534793f, 91.42098630908991f, -1.0313590348475934f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79361560 63.63120103 -153.76890783 {Pose: {Head: [-25.41548406596377f, 94.3336097147909f, 3.917371148603735f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.57931994 64.03788796 -154.70229131 {Pose: {Head: [-89.9530259071751f, 91.3672715524054f, 0.011945737226232144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96300166 63.57996483 -153.59960396 {Pose: {Head: [-24.24050560977492f, 98.08478563905707f, -0.05568088061505636f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69269518 64.06628112 -152.48142371 {Pose: {Head: [-89.37768024498608f, 91.15341973260126f, 4.438726947615373f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95927737 63.58172382 -153.79388125 {Pose: {Head: [-24.464335832969827f, 98.12739440642213f, -0.005160892362734177f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72521449 64.01075457 -152.76340438 {Pose: {Head: [-89.68146416385245f, 90.93368312145346f, 0.3364985664733062f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70764046 63.97960343 -152.88514159 {Pose: {Head: [-89.72476654789394f, 90.01556298507941f, -6.898460725996037f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88873050 63.58388709 -153.34469528 {Pose: {Head: [-24.82720443427233f, 86.84937472371978f, -0.0029549498943031625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.43571303 64.05015053 -152.11291830 {Pose: {Head: [-87.96354149406105f, 70.10371787253139f, 0.0960247093970416f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.38058577 63.48275948 -154.34353459 {Pose: {Head: [0.048759631048240396f, 89.98155855715812f, -9.566624267559343f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86827175 63.58990722 -154.25907318 {Pose: {Head: [-25.86541193382065f, 109.65767152291353f, -0.009550764955005382f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58844778 64.03587710 -152.06756603 {Pose: {Head: [-88.11513512574274f, 77.86941895042268f, 0.8917994873723957f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84349722 63.58579607 -153.67081486 {Pose: {Head: [-25.159056311922516f, 91.84595557553584f, -0.007038855169975969f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88060063 63.58602071 -153.90148595 {Pose: {Head: [-25.17758365025277f, 91.79488583792539f, 0.005100286823103459f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95152484 63.58203144 -154.11349618 {Pose: {Head: [-24.586961720135662f, 91.47887576167415f, -0.05958077331565844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98669712 63.58089632 -153.32376588 {Pose: {Head: [-24.441492372342783f, 90.16049891727955f, -0.07571464642958756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.67850493 65.01013813 -152.87680997 {Pose: {Head: [-89.73396715573035f, 86.44704688978918f, 0.24226787192088944f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79324560 64.65940702 -153.39065928 {Pose: {Head: [-30.676869513747974f, 93.2245519238464f, 3.409325871733945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71869372 65.01069019 -151.79034528 {Pose: {Head: [-90.05728656741188f, 91.37688188395558f, -0.06564046613544267f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66781696 65.12359062 -152.64585232 {Pose: {Head: [-89.96996126509254f, 92.46307455124075f, 4.590272462221346f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79160610 64.62240542 -153.85883901 {Pose: {Head: [-31.183222022137087f, 102.28480422692512f, 0.028541469431320833f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.53844832 65.03887563 -154.68708975 {Pose: {Head: [-89.95462391700562f, 93.76755183614212f, 0.14752738781938723f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66223820 64.98524527 -152.19933835 {Pose: {Head: [-89.84637859184626f, 93.5806887663507f, -4.0193052014273976f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71981452 65.01101635 -154.67437581 {Pose: {Head: [-89.96921300108879f, 90.99351829485043f, -0.0199474894392228f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63086045 65.03489572 -152.86840999 {Pose: {Head: [-89.60997056656603f, 93.25953245572217f, 0.2861276045760949f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87245860 64.61742455 -153.41829563 {Pose: {Head: [-30.397730912482192f, 90.65280178453091f, -0.0038880208638047177f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.27396627 64.47399651 -153.48502389 {Pose: {Head: [-0.32248296417476136f, 90.07421740935084f, 0.956041816585777f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90832178 64.60982034 -153.43226728 {Pose: {Head: [-29.644806553719416f, 90.00189992871395f, -0.2551108490317571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.51587317 65.03556383 -151.73129756 {Pose: {Head: [-90.05842415586753f, 90.80035039089714f, -0.17604526208432705f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.77422167 64.62462386 -153.62156975 {Pose: {Head: [-30.950083840003945f, 101.91821150716827f, 0.33055714866458275f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.65808195 64.97739047 -152.44844168 {Pose: {Head: [-89.47955771755666f, 96.75339743970515f, -5.669848511707514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84289091 64.61774310 -153.56630191 {Pose: {Head: [-30.452697542226627f, 90.7617986151506f, 0.0028940856057223965f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86830979 64.63903259 -153.86176417 {Pose: {Head: [-33.90577493822153f, 82.88767945253677f, -0.028148022551059377f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88868707 64.64131520 -154.18803513 {Pose: {Head: [-34.178284106780794f, 89.95385660551612f, 0.03484447004985036f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.78447818 64.62856996 -154.03583984 {Pose: {Head: [-32.227445969095314f, 102.24553727047545f, 0.033389170611768514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.60447519 65.06320079 -152.91676391 {Pose: {Head: [-89.66758387415341f, 87.98336212768662f, 0.3128003111439585f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.66580867 66.04400060 -156.11340172 {Pose: {Head: [-89.22765639838738f, 89.5026587012366f, -0.9908268788652276f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.77198815 65.59806359 -153.90681293 {Pose: {Head: [-21.61313200596489f, 107.23579811058265f, 3.143278665596562f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.53843324 66.14056558 -156.26228738 {Pose: {Head: [-88.6348480902493f, 85.0187506290574f, -0.3451733542288433f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.80513910 65.63435720 -155.04883545 {Pose: {Head: [-33.11790912178935f, 92.10368892567207f, -0.0002063688280627195f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03857038 65.53051724 -153.59873006 {Pose: {Head: [-15.164884788197403f, 88.36062084007385f, -0.017565619332124853f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.82644795 65.54857577 -153.32068036 {Pose: {Head: [-18.574191699268916f, 85.6812043677655f, -0.00971921653393829f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.78633165 65.63331066 -154.58485487 {Pose: {Head: [-32.94130002625871f, 84.34518849020155f, 0.002273247384323207f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.91391582 65.57378254 -152.11495789 {Pose: {Head: [-23.08940508305553f, 89.96072804244781f, -0.006157790255922253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89259338 65.55101590 -153.86181898 {Pose: {Head: [-18.98570572724198f, 86.27884445942006f, 0.03189286650331364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.94041255 65.55005446 -152.84030302 {Pose: {Head: [-18.849052238212586f, 90.62979138574242f, -0.008152871428133151f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90128138 65.63250885 -154.76965940 {Pose: {Head: [-32.899334715568f, 89.97126773997046f, -0.0067094801878683314f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61075983 66.08702430 -155.94027346 {Pose: {Head: [-88.69498218077514f, 83.94288507209653f, -1.1295315543666837f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69002845 66.02512463 -157.32880708 {Pose: {Head: [-90.22132388300598f, 84.76095562693861f, -4.167290462294761f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.52590520 66.09137521 -156.46884184 {Pose: {Head: [-88.54235635664949f, 87.59379110949928f, 0.09919709264040599f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70297205 65.57921916 -152.66229142 {Pose: {Head: [-36.24257349861878f, 76.60812804366633f, -9.996538910562114f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.80855904 65.55685163 -153.79598729 {Pose: {Head: [-20.100631087890267f, 105.87525252018315f, -0.04058362125030161f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86903088 65.63077797 -153.99461252 {Pose: {Head: [-32.548336600806664f, 81.04774459414689f, -0.0020477982489470864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61663721 66.05665541 -156.08625238 {Pose: {Head: [-88.57240586238768f, 85.62513976374885f, -1.1721364438263966f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.67534634 66.02152008 -156.21847083 {Pose: {Head: [-90.12126487979539f, 84.64986846805344f, -1.46997525145607f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69025916 66.00238611 -156.37245700 {Pose: {Head: [-89.8721450007671f, 85.51008198148097f, -0.4507314545395519f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.73759527 65.58551450 -153.98172592 {Pose: {Head: [-25.103918205172466f, 105.9711019275652f, 0.0014289386746504094f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84172938 65.70916050 -153.81812352 {Pose: {Head: [-18.568050481004843f, 91.29623108572588f, 15.05213985149531f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00526115 65.57098145 -152.16978767 {Pose: {Head: [-22.67365196924467f, 89.94295755126468f, -0.019257195083794282f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.02844774 65.53611069 -153.05107261 {Pose: {Head: [-16.72758618884948f, 95.95628065437471f, -1.1733806199844519f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88452614 65.63272796 -154.37459027 {Pose: {Head: [-32.713832898152894f, 84.46409785877427f, 0.18277135480322343f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87783351 65.63056506 -154.14478247 {Pose: {Head: [-32.503616485252344f, 81.2113372960706f, 0.02349953320518795f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85711741 65.57414003 -152.62775738 {Pose: {Head: [-23.15294952252672f, 90.52486759252832f, 0.00005232486845210477f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.57400920 65.76903720 -154.84309794 {Pose: {Head: [-43.57299898767867f, 97.84229357811756f, 8.199533131653403f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.78689009 65.63310567 -154.28495686 {Pose: {Head: [-32.92182735497191f, 81.83416631118787f, -0.0025061196586617564f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79639537 65.57567896 -152.76648741 {Pose: {Head: [-23.414573997212784f, 80.9893571196155f, 0.007164529255345028f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66828001 65.96385724 -155.63869972 {Pose: {Head: [-90.21331651413453f, 84.67874555787026f, -8.098894162597903f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90573447 65.54696767 -153.41725268 {Pose: {Head: [-18.280445780009227f, 85.83491066218448f, -0.011853953741781947f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71165423 66.00809502 -155.46456802 {Pose: {Head: [-89.98794236699699f, 85.10666379520005f, -0.28284114190109416f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00687352 65.53710445 -153.44850818 {Pose: {Head: [-16.419631322125383f, 86.57767719883064f, -0.005132541736060243f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88468483 65.57403578 -152.39288815 {Pose: {Head: [-23.13057557179923f, 90.54814784717206f, -0.0026185624728760847f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96179827 65.57129529 -153.31304256 {Pose: {Head: [-16.823074897377335f, 86.96446382072277f, 3.1766774083917255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.94032288 65.54364456 -153.37930534 {Pose: {Head: [-17.612354792749777f, 85.89972727883026f, 0.008660336245420341f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88070737 65.54779038 -153.36151404 {Pose: {Head: [-18.413991308645887f, 85.53471778854164f, -0.003938177397691112f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58089176 65.95575888 -156.52498328 {Pose: {Head: [-89.78558186858301f, 85.83967859107847f, -8.62604391095782f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.94491973 65.57253426 -152.07626363 {Pose: {Head: [-22.88163199233393f, 89.90060297592784f, -0.00942096053872474f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.28066858 65.46531267 -152.61919207 {Pose: {Head: [-0.6406163834801999f, 90.46646619164939f, -0.0950973405992198f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86192781 65.54667647 -153.26442615 {Pose: {Head: [-18.189450602591773f, 85.48251379957861f, 0.013453158635167195f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.59131350 66.11602470 -156.24934799 {Pose: {Head: [-88.60416116717452f, 84.94923189388115f, -0.37775240733683907f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.59999905 65.95689074 -156.70860870 {Pose: {Head: [-89.84278915357417f, 87.51856577841298f, -8.638771873822492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10189699 65.52649074 -153.52094385 {Pose: {Head: [-14.42639400913481f, 89.3850889123757f, 0.02952384024073354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10536759 65.52068225 -153.62584742 {Pose: {Head: [-14.486124617343707f, 88.36167496893859f, -3.4591535513917364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70010141 66.01521087 -157.13887252 {Pose: {Head: [-90.03188622929932f, 87.29234813859362f, -3.7757991960209547f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.01340735 65.55489170 -152.64653340 {Pose: {Head: [-16.43505688648359f, 91.07368408899369f, 1.7783162209430385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88819683 65.62390802 -154.84720259 {Pose: {Head: [-32.969383923987714f, 88.56047909021201f, -2.1923647700290765f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.05434145 65.53753313 -152.89747929 {Pose: {Head: [-16.557875035948204f, 90.39973655325706f, 0.01947617602489423f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83038871 65.63334882 -154.78635737 {Pose: {Head: [-32.9488653938162f, 91.62320857297522f, 0.003027717683885369f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70997498 66.00956219 -157.35291461 {Pose: {Head: [-90.02348896568989f, 95.78994916431057f, -0.1434601725629909f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89869040 65.60384212 -151.61147992 {Pose: {Head: [-28.181979224991743f, 65.54314312099858f, -0.0012602458345091715f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84032652 65.56127915 -152.91020618 {Pose: {Head: [-20.89836871314331f, 64.53136604553852f, -0.032346530450383354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96611429 65.55047365 -152.55712331 {Pose: {Head: [-18.933566048480657f, 90.56453211002882f, -0.032497889500663395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.62136226 65.95389433 -156.92153386 {Pose: {Head: [-88.57351082789131f, 95.79383979380833f, -8.356846327501259f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69110464 65.95253632 -155.84335592 {Pose: {Head: [-89.76540832412047f, 86.20534037025435f, -8.769341696267817f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95548415 65.61927617 -152.20479546 {Pose: {Head: [-22.84077709714484f, 91.5096728079198f, 3.7824128811747184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.73394256 65.70840695 -152.41661497 {Pose: {Head: [-48.68038821972866f, -166.6322146171205f, 7.316045392987516f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.05026294 65.71870723 -152.28070127 {Pose: {Head: [-45.896387162422045f, 164.60727112406352f, 0.029715697862250683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.95648063 65.71367382 -152.19903254 {Pose: {Head: [-45.2655596249898f, -179.98617871678206f, 0.10595591845071835f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.61426737 65.73874131 -152.21175179 {Pose: {Head: [-45.42153673198399f, 177.32510870140928f, -2.392777674538715f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.43605523 65.71590781 -152.27080868 {Pose: {Head: [-45.49139718494442f, 178.85385153697996f, -0.00701174315030127f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.97703388 65.71895004 -152.33764921 {Pose: {Head: [-45.90237558645071f, 161.2209270633719f, 0.053251841802774626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.36058978 65.73943210 -152.25498057 {Pose: {Head: [-46.316477386221244f, 179.06836453102784f, 4.443868822363776f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.06446635 65.69351608 -152.24562930 {Pose: {Head: [-42.24608573219355f, 153.97401782916603f, -3.8026486308924756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.34847542 65.72781050 -152.36952421 {Pose: {Head: [-47.264708567760316f, -169.94967955660172f, 0.21876596712144458f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71698948 65.74335480 -152.27355558 {Pose: {Head: [-47.96454714291033f, -177.63501600924138f, -2.4933349789152874f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.50248891 65.73910159 -152.24543668 {Pose: {Head: [-47.716011610417816f, -174.21752994283585f, 2.92236311265984f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.18333918 65.72285606 -152.23546711 {Pose: {Head: [-46.51140388896295f, -169.42437672976945f, -0.04417001611758688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.41277614 65.72043519 -152.21083111 {Pose: {Head: [-46.617594969303646f, -178.5418799247381f, -0.7014854856252737f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.12099346 65.72124307 -152.32255842 {Pose: {Head: [-46.32550258005908f, -169.74875652134943f, -0.013415718342955423f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.75946636 65.73318784 -152.36155962 {Pose: {Head: [-48.047770875972f, -174.95484485573186f, 0.012074175090667513f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.83923024 65.63610225 -152.48769528 {Pose: {Head: [-46.48394255673671f, -173.68881949647266f, 10.031737083007178f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.55976124 65.72859268 -152.21498797 {Pose: {Head: [-47.727383720597224f, -179.66494650558988f, -0.3819038194068169f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.31956693 65.72661193 -152.32196351 {Pose: {Head: [-46.67479815248866f, -168.62818461702022f, 1.2907946628925537f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.49705639 65.72188154 -152.32321557 {Pose: {Head: [-46.28474053022183f, 174.53239171168133f, 0.14176488287526104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.63438476 65.71801286 -152.31719540 {Pose: {Head: [-45.80651091157386f, 177.9778792504346f, -0.0004302810350342648f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.90597668 65.73456501 -152.23953080 {Pose: {Head: [-46.23702619338904f, -172.9774922637095f, -2.7151646478582943f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.27525268 65.71358490 -152.19927517 {Pose: {Head: [-45.366921586052314f, -179.8571522179945f, -0.1964026386384974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.74671626 65.72976587 -152.21633762 {Pose: {Head: [-46.28637168381889f, -176.6007756304883f, -2.808273349676973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81896475 65.73327823 -152.31535488 {Pose: {Head: [-48.05133210890184f, -174.94612774445983f, 0.002121252506422071f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.24468207 65.71803964 -152.37491129 {Pose: {Head: [-45.968645732504655f, 163.76682833007214f, -0.40569815981317214f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.11537005 65.72470512 -152.28251820 {Pose: {Head: [-46.34422213076357f, -170.25282074264314f, -0.5670341061599595f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.61485502 65.75259784 -152.31938440 {Pose: {Head: [-46.02137427890951f, -176.74779227689427f, 4.978663733312834f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 913.51696904 62.97562385 -152.48672389 {Pose: {Head: [-47.593688448175484f, -179.72534867863163f, -0.00003910630840002032f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.48586666 62.61819398 -151.87048001 {Pose: {Head: [-0.20457281816757272f, -179.4875086022159f, -0.0009163399218767138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.35761137 62.71552349 -152.19385178 {Pose: {Head: [-16.20555149357076f, -179.5183374548218f, 0.003386481450929639f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.08393876 62.71277966 -151.83191888 {Pose: {Head: [-0.1420390457641203f, -179.56768579069924f, 14.914476710025106f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.68745347 62.79500744 -151.78913480 {Pose: {Head: [-0.01705927771174679f, 179.98876469284912f, 0.0011003679495825561f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.22365131 62.74248704 -152.22833743 {Pose: {Head: [-16.267862582863213f, -178.09682411330473f, 4.880746376290413f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.86439276 62.72104670 -152.21415997 {Pose: {Head: [-17.026027573795535f, -161.0215216148828f, 0.018320340430421966f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

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




