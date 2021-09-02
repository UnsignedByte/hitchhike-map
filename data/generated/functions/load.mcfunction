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
kill @e[tag=quest_book]
scoreboard objectives add quest-book-upd dummy
data modify storage generated:quest_book current set value ["","",""]
data modify storage generated:quest_book completed set value ["","",""]

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

summon armor_stand 1.45913546 64.56835001 0.19963606 {Pose: {Head: [-179.85776061997592f, 7.626768736522683f, -0.19601470332362098f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.12137611 64.63535030 1.13718816 {Pose: {Head: [45.52642555727047f, -19.893892266316243f, 26.87208041068627f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.76789820 66.61707438 2.29042128 {Pose: {Head: [-161.68653368380413f, 2.147291781145997f, 0.1911984012965778f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.36614345 64.10533137 0.03026747 {Pose: {Head: [87.98712909950915f, 8.054121111630224f, -2.7460898572271732f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.32750898 66.53670580 2.38494519 {Pose: {Head: [-134.8590421808649f, 0.02789467692996026f, -0.05616559409233618f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.08290056 65.79386169 1.78324738 {Pose: {Head: [-107.55184061088578f, 89.52359968607739f, -0.004532023064320087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.41950902 64.18594207 0.63778213 {Pose: {Head: [-98.8515157008808f, -9.604737740717166f, -0.48931947601308967f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.63314803 63.92976349 0.15473578 {Pose: {Head: [-89.71829686724277f, -96.87623690125426f, 37.40856178183471f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.40737942 64.53179729 0.67437564 {Pose: {Head: [88.46073743695689f, 14.792997679344847f, 0.39799563863805426f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.74238473 65.07009561 0.70784710 {Pose: {Head: [-179.53969221354862f, -3.8427121057989178f, -0.04596243565629091f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.51198131 66.66250916 2.32896922 {Pose: {Head: [-161.92833638714916f, -0.11647625683394433f, 0.20511891931059847f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.35928134 66.63009015 2.29204404 {Pose: {Head: [-161.439426476497f, -9.855704884201007f, 3.995203209730669f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.36129723 66.07366968 1.94596417 {Pose: {Head: [-141.64663850957083f, 0.6138661492181327f, -0.0648268914799791f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.73145126 63.88085639 0.63191882 {Pose: {Head: [41.44688569551554f, -3.731464328056592f, 0.033919085762852345f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.65127599 66.59380720 2.17546996 {Pose: {Head: [179.85445093649304f, 4.983484116635201f, -0.39861552087240415f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.52066546 66.07149036 2.80528500 {Pose: {Head: [-89.87794822730463f, 5.188937866586667f, -0.326348151262483f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.27009106 66.09260842 1.95674449 {Pose: {Head: [-146.20076390748014f, 0.1118981051499714f, 0.32805786325500746f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.61884327 64.34693235 0.52329172 {Pose: {Head: [-118.37020768716286f, 40.767245097835435f, -23.75070481004216f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.65476714 64.30026898 0.46853993 {Pose: {Head: [-108.52773445932479f, -52.37999547855206f, 1.889382012981422f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.83616631 64.48730454 0.53684541 {Pose: {Head: [-123.16038720186324f, 24.417749001037077f, -14.539061198294867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.55769041 63.62866825 -0.26819856 {Pose: {Head: [89.06082493650999f, 0.3754774366829211f, -1.2719755139930617f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.03533051 64.57963017 0.20214887 {Pose: {Head: [179.98855737812508f, -0.6742567375559644f, -3.41952320306217f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.48869002 64.61961740 0.43818239 {Pose: {Head: [-128.0586723301709f, -2.207499800622396f, -1.8570908549674363f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.13540432 64.61725247 0.51202433 {Pose: {Head: [-122.940271979045f, -8.715173084055824f, 8.588258557469807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.72471417 64.29340130 0.52691939 {Pose: {Head: [-112.41601787130122f, -46.2163662238144f, 28.87802279441883f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.65235376 66.07439282 2.53052696 {Pose: {Head: [-90.2011188490685f, 19.159717372413876f, -0.3209699864707434f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.85074259 64.62953735 0.52723366 {Pose: {Head: [-127.39686702991315f, -23.174009180167186f, 14.049334315002632f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.06338542 65.07183247 0.72230580 {Pose: {Head: [-179.75402862428285f, -1.0707808632153193f, 0.48617352077521175f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.21810638 64.57922523 0.22111771 {Pose: {Head: [179.52368574696396f, -0.289577823097346f, -0.7045887274274131f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.09073236 65.11895336 1.01424410 {Pose: {Head: [92.03204449326508f, 4.661946708055583f, 11.24813117817616f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.86231929 65.17087221 1.29627822 {Pose: {Head: [-109.96157925225036f, 46.116549119281785f, -16.044016339354233f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.21276529 65.35315111 1.65522472 {Pose: {Head: [-112.86984123801145f, 10.833093573193834f, 0.7328702498001052f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.13580954 65.38137862 1.16396598 {Pose: {Head: [-129.7856089485677f, 19.775150251864854f, -2.9249910268288795f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.13014377 63.43888693 0.29154061 {Pose: {Head: [27.9923405638416f, -9.34594079380696f, 2.7931180270936866f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.89539090 65.42690036 1.16532439 {Pose: {Head: [-134.48763715276834f, -18.843699579168447f, 18.417246733029696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.67567775 65.92582563 1.64604528 {Pose: {Head: [81.85531272082649f, 57.56679186479483f, -44.57977722048125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.67365363 64.62716963 0.21585856 {Pose: {Head: [132.08143086541838f, -2.4825838889797547f, -0.13678117893808586f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.19342761 65.10856947 0.91088859 {Pose: {Head: [-152.21916274710833f, 0.023650155472248226f, -0.0016298097895949828f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.95133836 66.06955467 1.69768875 {Pose: {Head: [-179.64357418793546f, -1.8381066248736992f, -0.00021151248906114837f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.33984482 63.55977446 -0.42045327 {Pose: {Head: [79.53662609099662f, -19.89770407914643f, 4.064262290493866f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.92641218 64.07442480 0.57948401 {Pose: {Head: [-90.1249270479938f, 22.585881557794742f, -1.6966090580925322f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.87525715 63.53400724 -0.52653837 {Pose: {Head: [89.82985027231929f, -12.097366789451426f, 0.6471224125227265f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.33545888 63.90730978 0.24159590 {Pose: {Head: [54.4773323766428f, -33.4724245684702f, 28.305453424010793f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.93723919 63.94876753 -0.07881128 {Pose: {Head: [77.63870532085207f, -36.040292018273135f, 7.573095825296969f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.47445643 64.57820637 1.28724920 {Pose: {Head: [-90.59677144721591f, 8.866631434444713f, -0.01702990143143184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.10305286 64.26307230 0.29789376 {Pose: {Head: [142.78000469195644f, -91.60981431519508f, 0.6921359923435617f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.83645488 65.54688349 1.65513507 {Pose: {Head: [90.03562407448798f, -7.412896263228462f, -0.0069485361496628975f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.87928284 65.10063185 1.82436074 {Pose: {Head: [-89.99013094787627f, -2.240884652906869f, 0.13249093099153453f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.89238958 66.12361646 1.97199380 {Pose: {Head: [-142.13131406392918f, -3.6991181331148866f, -5.1088100175159274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.49300634 66.61591607 2.34231397 {Pose: {Head: [-161.93268279668894f, -0.021411067383009484f, -0.007519793168064869f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.25281706 63.70667257 0.13176144 {Pose: {Head: [85.10658264972076f, 81.31041073578545f, -11.584701567451013f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.72871281 65.08557845 1.77645224 {Pose: {Head: [-90.10171883819692f, -3.2110750122974294f, 3.9237474154088496f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.15077932 65.34857185 1.59920162 {Pose: {Head: [-113.02788986912341f, 22.695352156741016f, -4.45252945657333f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.51872403 64.19083796 0.73918162 {Pose: {Head: [-99.89195416690119f, 9.895933774519795f, -0.030739205690768504f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.99824736 64.11813107 0.78062010 {Pose: {Head: [-91.38755606289799f, -0.6775820754386956f, 0.9479693859225676f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.25781277 65.57477707 2.27020699 {Pose: {Head: [-90.26835629162974f, -7.622299188479985f, 0.5731354944556394f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.56883537 64.24761873 0.65948822 {Pose: {Head: [-102.65622297549008f, 21.275600818611462f, -1.2114347964986938f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.15150966 65.10862355 0.88050803 {Pose: {Head: [-152.20965910853565f, -0.020361874606514115f, 0.00830413457331988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.58440098 65.07423232 1.74378226 {Pose: {Head: [-90.0039255428114f, 17.94783461719986f, 0.007769906366465034f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.57604706 65.59246396 2.14782447 {Pose: {Head: [-90.77554232432041f, -4.0735187587701205f, 3.429697684752812f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.44579415 65.00011289 1.30852794 {Pose: {Head: [-95.38929033862958f, 88.23147396185264f, -21.741872047069243f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.43273056 63.83011229 0.30512746 {Pose: {Head: [-89.62194721438019f, -75.53359802835844f, 44.27448054522198f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.04458207 66.17734109 1.93381646 {Pose: {Head: [-141.258775205959f, 8.99624052227865f, -10.886987378816043f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.31439490 64.06746335 0.13949941 {Pose: {Head: [-77.97717865488761f, -109.82346548263166f, 32.75192922234538f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.17077928 64.98524352 0.87064814 {Pose: {Head: [-135.1157731159516f, 18.457625088069438f, -40.7204263305735f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.73891160 63.58378845 -0.16023777 {Pose: {Head: [53.48287530529747f, 6.224581680161701f, -5.42195808978236f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.50724714 64.14259633 0.80666910 {Pose: {Head: [-95.46654122837901f, 0.028803311537762857f, 1.7644030923413827f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.14323337 65.44806148 1.27569037 {Pose: {Head: [-129.42228950857074f, 13.430916396733112f, 2.131431761397935f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.61450050 64.21522901 0.44792636 {Pose: {Head: [58.26606257181737f, 14.701689095843436f, -1.8592312249085614f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.22132085 64.46005189 0.52612442 {Pose: {Head: [-120.23040231988517f, -40.9300229310035f, 29.52754096952241f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.14109100 66.44909810 2.49774388 {Pose: {Head: [-118.26400200982845f, 31.816444751042674f, -25.993264691643425f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.84542374 64.09289851 0.12364012 {Pose: {Head: [89.50281801836485f, 25.315351137331316f, -0.15070296908379927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.74189097 65.58850313 1.63581811 {Pose: {Head: [91.2429354718968f, 29.993033562535178f, -2.8289729086802864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.26633686 65.09844384 0.87220890 {Pose: {Head: [-148.15088274857104f, -0.08303733275535086f, 0.02537021932123274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.26985964 66.35365955 2.09609677 {Pose: {Head: [-141.3010703496488f, 3.9228844037867594f, -5.535478609892551f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.68746034 66.60222181 2.38696313 {Pose: {Head: [-142.08795099429634f, 15.384029416512266f, -0.42328790724440946f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.41921575 64.09138296 0.82122383 {Pose: {Head: [-92.6163331651553f, -0.11901449425695222f, -0.8705779849840526f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.35975252 65.86118410 1.79968102 {Pose: {Head: [-127.15828025538727f, 11.777624027290635f, -9.166675650626205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.68125982 66.59722885 3.32613132 {Pose: {Head: [-89.7331912652832f, 11.076655197253736f, 0.509230140519012f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.51134555 64.22553429 0.68803107 {Pose: {Head: [-101.58649917962178f, 18.520939035214347f, -0.08822296432876785f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.78951200 65.86807953 1.61979552 {Pose: {Head: [-142.05904169822108f, 13.418842245012561f, -17.770052085715182f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.49145187 66.04046450 1.93600460 {Pose: {Head: [-135.38887446669042f, 0.4123970471050423f, -0.11163837059753981f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.28403133 64.95622992 1.15034762 {Pose: {Head: [-116.36258878921603f, 42.27950636616064f, -35.53776462287187f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.14788771 65.64540851 1.40379151 {Pose: {Head: [-91.81773026013255f, -108.00551030554392f, -0.005415831543688905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.77625620 65.01329254 0.94252219 {Pose: {Head: [-131.27062150998253f, -1.3403209121591524f, 0.07427830842203191f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.23277144 65.13207974 1.20256509 {Pose: {Head: [91.3129962120462f, -6.617230490532452f, -6.697947444163481f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.94923763 65.58108088 2.22621719 {Pose: {Head: [-90.71780564708615f, 3.8742252873981977f, 0.8030862771293164f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.59759712 64.17325780 0.70060174 {Pose: {Head: [-97.90125194161541f, 20.05598281203098f, 0.7500421818193891f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.91877215 66.59443417 2.22343677 {Pose: {Head: [-179.93852983292956f, -0.014455799939316803f, 3.583635429073824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.92922253 66.13362800 1.97537957 {Pose: {Head: [-130.3190448332703f, -26.536249751732896f, 6.330251145627125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.96291792 65.07356064 1.81154369 {Pose: {Head: [-89.97346975826979f, -2.339660666909381f, 0.01857576246288701f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.75136118 64.57414817 0.55735973 {Pose: {Head: [89.99905104929258f, 5.1220512153019975f, 0.007442020546909069f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.38104600 65.64486124 2.16273462 {Pose: {Head: [-89.97456391044904f, -17.889941135587197f, -6.8401051875504075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.69060911 64.08897201 0.51037832 {Pose: {Head: [50.79955428635997f, 28.56875467410483f, -26.661354370023027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.64299878 65.15196330 1.05552991 {Pose: {Head: [-130.0137176791019f, 9.799146858370236f, -15.027557880375726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.01843524 64.81744022 0.84453171 {Pose: {Head: [84.9574803957389f, 92.0842231620296f, -31.631769623843553f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.65528159 64.92619901 0.79980711 {Pose: {Head: [-124.98883213101271f, -3.682838779759323f, 3.74153247492751f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.39436670 64.58655685 0.35242514 {Pose: {Head: [-124.21194897163343f, 19.019429790148486f, -5.462749597333474f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.13263520 66.55889451 3.32278984 {Pose: {Head: [-88.10242183225832f, 24.660375861273103f, -6.890922552106016f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.04831534 63.59788816 -0.27762761 {Pose: {Head: [61.13153757930568f, 15.74916937408887f, -2.8307923409672586f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.28606832 64.61440280 0.72414886 {Pose: {Head: [-120.801309909729f, -40.64838069539201f, 29.518882909430786f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.24267841 64.54849150 0.68154150 {Pose: {Head: [67.47553145092995f, -10.63550448963066f, 11.023916888505104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.21421157 64.55999061 0.51530710 {Pose: {Head: [178.14511958285632f, -90.16925206023693f, 0.21774845718580807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.45421357 66.18649339 2.55377572 {Pose: {Head: [-122.04800475039858f, -44.976995960511495f, 54.44459975181332f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.05148262 65.46042898 1.38905592 {Pose: {Head: [88.97652256883997f, 101.31696553581862f, -53.57348716323792f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.77804749 66.62797199 2.28037060 {Pose: {Head: [-151.31068158950256f, 58.65216806893908f, -11.7582232432138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.12832890 64.75630283 0.72561648 {Pose: {Head: [-113.88770785832325f, 14.601930079198361f, -9.599734050427038f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.90806316 64.06643799 0.12561852 {Pose: {Head: [89.5158287719061f, 26.057863125640484f, -0.08941770171966683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.18410274 66.58264660 2.18744408 {Pose: {Head: [-178.8211627951855f, 12.320120099534572f, -2.4983739612691958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.10486983 64.07246644 0.14639148 {Pose: {Head: [89.99396887000107f, 1.9556348203032399f, -0.27861061306368196f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.33727759 65.57709868 1.05537476 {Pose: {Head: [-88.37692952867563f, -128.0612664266823f, 0.6649890082538826f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.33711994 66.59118214 2.09587777 {Pose: {Head: [179.82925263667846f, 4.843257028488221f, -3.241047798337791f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.87792742 64.84413618 1.35043217 {Pose: {Head: [-91.60396475937543f, -77.09310405009631f, 49.834410418935974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.15620450 66.72554597 2.31852758 {Pose: {Head: [-161.51136571926435f, -8.213955292783758f, 0.028526594348045872f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.07602520 66.26943369 2.14202361 {Pose: {Head: [-124.30338325990299f, 16.92000987278194f, -29.752837408248197f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.22781574 63.67271770 -0.04438348 {Pose: {Head: [57.07905752540518f, -6.203950828902529f, 4.056961045729892f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.36644235 64.57493744 1.13743179 {Pose: {Head: [-90.02700833590609f, -33.73858242482905f, -0.25710686237996394f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.27196006 66.23052287 1.94961511 {Pose: {Head: [-140.71748064949387f, 10.443128785317668f, -10.22662920422549f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.98633169 66.57418982 3.27003501 {Pose: {Head: [-89.99860983552169f, 3.1987113232157514f, 0.022405200848732917f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.41580994 64.62158069 0.40720543 {Pose: {Head: [-127.97434639283107f, 1.5209184468453567f, -4.6679968872931275f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.42950803 66.59126073 2.12901244 {Pose: {Head: [179.82452910004736f, 4.804520159753701f, -0.7022288185693768f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.36570329 64.15731325 0.33837332 {Pose: {Head: [-104.90060500581583f, -67.41012553488676f, 34.92520790131844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.78243468 64.88951010 1.33151796 {Pose: {Head: [-97.1952078195748f, -66.80423850258425f, 49.09065565664383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.03721517 66.56892019 3.03558668 {Pose: {Head: [-89.44428608763977f, -37.526696018777045f, -0.06779869983671061f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.15203182 64.54971092 0.36233373 {Pose: {Head: [-118.86326977485402f, -21.929954169808653f, 11.695706911711364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.19585906 66.60972554 2.20528572 {Pose: {Head: [-167.45800373637562f, 50.5464247101802f, 0.012886168658619102f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.12174612 64.49016934 0.38091744 {Pose: {Head: [-112.96410655591622f, -22.605122376954846f, 16.25044025453829f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.23202970 64.92735968 0.44842356 {Pose: {Head: [-143.91279853265007f, -13.52788875056747f, -15.500278401128202f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.25201962 64.68111295 0.34485711 {Pose: {Head: [-141.2124144079813f, -20.629642751680755f, -7.923545140455307f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.25740594 66.09017907 2.67439917 {Pose: {Head: [-90.08644795646963f, 4.063221379680691f, -5.7817421559498285f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.64260367 64.18854969 0.59943108 {Pose: {Head: [-98.88082854578529f, 31.658911152056103f, -0.4468383143622672f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.80583075 64.67836342 0.70874558 {Pose: {Head: [93.16957489091496f, 2.019212460935948f, 9.744706982391083f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.77270043 66.57377887 3.08491019 {Pose: {Head: [-90.01213635747686f, -3.2665476749618407f, -0.010300245775283405f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.88704302 66.60157402 3.28264876 {Pose: {Head: [-90.00032279240052f, 6.088050774019062f, 0.02207574019284113f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.88792058 64.70023212 1.01598815 {Pose: {Head: [45.29580230279881f, 41.66781719803169f, -33.255833217340374f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.07089775 64.71728506 0.32035377 {Pose: {Head: [-144.90377704169651f, -18.291141175740844f, -13.031979794583973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.19384234 66.60848310 2.17917121 {Pose: {Head: [179.86285484221048f, 9.120075572237903f, -22.836941006324032f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.37103086 64.72721082 0.67050951 {Pose: {Head: [-114.8102620001512f, 9.951502048173483f, -7.475509549199254f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.66657128 65.46056127 1.36858659 {Pose: {Head: [-129.63059694337534f, 40.73606896925384f, -24.65886917317014f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.27399819 64.85620906 1.05873987 {Pose: {Head: [-113.15746459230104f, 47.6947422227856f, -37.48478657164767f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.17472781 66.37448166 2.30430434 {Pose: {Head: [-123.28107372227274f, 20.180629533086552f, -17.38645974397999f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.27775000 66.70736460 2.47057848 {Pose: {Head: [-131.41630446672943f, -5.68613929564103f, -6.4579350756813545f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.87260459 65.80716605 1.49577570 {Pose: {Head: [-143.6002039658342f, -3.7067721233821396f, 7.462195379768809f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.10038311 66.65359153 3.01635419 {Pose: {Head: [-95.06950520982393f, -22.090209466122054f, 3.943510958911632f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.40503776 64.50567940 0.43871838 {Pose: {Head: [-113.05982971583276f, 38.263888838572434f, -22.37203536396595f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand -0.15465079 64.31629702 0.17535755 {Pose: {Head: [-105.3892732806769f, 68.74333591120102f, -30.5636919068735f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

summon armor_stand 909.01779939 64.63859659 -152.14581307 {Pose: {Head: [-92.63255537489961f, -5.864048612380119f, 0.2644132962429776f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.68346974 65.56741864 -151.82022801 {Pose: {Head: [179.82600091132153f, -2.3986909844479194f, 0.012440147722706034f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.76494433 65.48577369 -151.77851054 {Pose: {Head: [179.84038731349165f, 0.06864117325137563f, -1.2417375555103913f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.71997393 65.15212983 -151.19684218 {Pose: {Head: [-95.95281889995394f, 0.07649245353148171f, 0.0774449446051433f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.00074482 65.16557662 -152.19206575 {Pose: {Head: [-146.36470764680146f, -18.712015685152174f, 1.8566972761446046f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.17954485 65.19353231 -152.13462052 {Pose: {Head: [-150.12769212193484f, 8.74150576240217f, -1.3474335619177578f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.45561909 64.12217988 -152.77406316 {Pose: {Head: [90.56828474990387f, -0.13298327153356795f, -0.4285326623700334f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.30361672 64.43309901 -152.76842036 {Pose: {Head: [96.87953648795632f, 91.72154141649764f, -15.19377499129062f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.11871782 65.15965096 -152.12295202 {Pose: {Head: [-151.72550740720106f, -0.2554686167311276f, -0.2596266266630505f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.37747241 65.57421723 -150.83514304 {Pose: {Head: [-90.00000362243405f, -3.964482832829811f, -0.000033546192733507526f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.38523927 64.52066588 -152.31611964 {Pose: {Head: [-85.02279004991182f, -100.41000570529219f, 43.699978887695984f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.65555324 64.58032713 -151.73219909 {Pose: {Head: [-91.80302552947305f, -0.1494815319180599f, -0.44882180694002f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.28769928 64.95908029 -151.97870433 {Pose: {Head: [-116.13068126346369f, 0.21912224433734437f, -2.7334925549544997f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.13648311 65.07336474 -151.18334458 {Pose: {Head: [-89.94192429345844f, 2.515874859278252f, -0.011199391712776681f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.07143148 64.94776791 -151.94211638 {Pose: {Head: [-112.8365340972342f, 38.950577449197525f, -25.04816912363775f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.52090641 64.59398494 -152.40111917 {Pose: {Head: [92.85236388103483f, 6.282084991639473f, -1.7276094070691341f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.67734840 64.57828979 -152.08314682 {Pose: {Head: [-90.7453305121062f, -0.7766359408767121f, 0.7997878028190515f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.71376451 65.06604507 -152.31044862 {Pose: {Head: [179.49162230591156f, 0.04818065705727091f, 0.004494462218524546f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.22028397 64.64660566 -151.93356049 {Pose: {Head: [-96.33148057255254f, -2.2955250821601316f, -0.5312154007470027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.42666105 64.55407759 -152.11636435 {Pose: {Head: [-89.28153159586742f, -26.9804610013392f, 1.2167691817085347f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.65370854 65.35613687 -151.49950270 {Pose: {Head: [-111.21782418856891f, -24.726606884196638f, 1.1351067927582543f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.89223757 65.06495965 -152.34139055 {Pose: {Head: [179.27660186314873f, -0.69971192371093f, 0.029992983015736465f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.92995652 65.15660577 -152.10142955 {Pose: {Head: [-152.5546198366609f, -2.7385565278693074f, -0.011706277916642987f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.25905692 64.06668009 -153.03900526 {Pose: {Head: [73.37477999340766f, -9.748653876750897f, -14.217677488480664f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.25603105 64.49342654 -153.40976676 {Pose: {Head: [-64.05031528261168f, 179.9972920248235f, -0.9750715158910489f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.68110691 65.18446864 -152.04406026 {Pose: {Head: [-145.39884975884945f, -2.138414074062164f, -0.3041334793878056f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.19622399 64.59325337 -152.30426207 {Pose: {Head: [89.63301645424816f, -14.92278812033601f, -8.388293951705188f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.15425746 65.06841215 -152.27799680 {Pose: {Head: [-179.98211383917254f, 0.6060040426146656f, 0.00631427072918103f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.07947452 64.66851853 -152.23143370 {Pose: {Head: [-91.17066823345061f, 0.6546349859145013f, -7.864374954345624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.68026780 65.05040897 -151.96157257 {Pose: {Head: [-120.1046642091791f, 11.117999039110762f, -0.08290434544781566f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.48450008 64.60860103 -151.66101540 {Pose: {Head: [-88.84298685197503f, -0.0016278686857442745f, -0.6341590220286336f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.57174020 64.98033949 -152.02779089 {Pose: {Head: [-116.47660212305834f, -16.475744505855477f, -0.5713728300360645f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 907.68426819 64.02523489 -152.34284305 {Pose: {Head: [89.78373642983236f, -89.9941955313217f, -3.5204677447188057f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.52230502 65.04583003 -151.93412873 {Pose: {Head: [-119.95620541779776f, 20.149542055495104f, 1.5077235819236328f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.04782554 65.58639131 -151.85300467 {Pose: {Head: [-175.81334257560877f, 52.798876477717116f, -0.12109739507806318f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.78274514 64.57388189 -151.78297780 {Pose: {Head: [-83.70006948591731f, -0.030740223411074633f, 0.31758531319649197f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.89919849 64.70166000 -152.11231717 {Pose: {Head: [-93.94779581758823f, -7.042252922639651f, -6.391852640278008f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.76442580 64.59148090 -151.74472635 {Pose: {Head: [-89.69144712527262f, -0.7365034466438634f, 0.5913074866974098f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.07054377 65.59469279 -151.84486641 {Pose: {Head: [-173.521959845083f, 52.787416955157084f, -0.09448886097371528f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.55551862 65.61436850 -151.54951539 {Pose: {Head: [-151.2347120799084f, -18.622913282550588f, 37.420845826437684f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.33988042 65.15946825 -151.77244604 {Pose: {Head: [-121.62889536070686f, -35.10214024125139f, 25.520287061679035f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.22816137 64.61036116 -152.17521904 {Pose: {Head: [-90.53007528652081f, 65.12690316438832f, 3.006629093112571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.24377717 65.64271236 -151.62791379 {Pose: {Head: [-157.42496993088545f, -0.027763099231601158f, -0.016271846053157905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.23409820 64.57793956 -151.67105140 {Pose: {Head: [-91.11709205016147f, -0.03885245662660272f, -1.030648562790211f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.76118662 64.60799095 -152.23514051 {Pose: {Head: [-91.73626951725583f, -0.07241806583281889f, 0.5551156753944935f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.05423597 64.60289957 -152.21270450 {Pose: {Head: [-90.67013310826044f, -6.1137233260023836f, 2.43573303506243f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.26720166 65.10409316 -152.25953618 {Pose: {Head: [-178.33013475280114f, -1.9076713514568837f, -0.06773580731462456f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.07573535 65.42888765 -151.53016755 {Pose: {Head: [-117.40558339874089f, -43.55794733006585f, 4.7828874439571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.19728241 65.12669431 -152.11922389 {Pose: {Head: [-153.5654510438459f, -2.161100149167689f, -1.0028411679383702f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.19090659 64.97326103 -152.00410129 {Pose: {Head: [-117.04728510653639f, -8.239884001228482f, 1.8139806011723267f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.34370241 64.95277034 -151.96513841 {Pose: {Head: [-116.39119980768311f, -10.064109353386636f, -3.425616499650354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.31061446 64.73807323 -152.22209636 {Pose: {Head: [-92.38472119690095f, -5.765915895719128f, -7.744383586269486f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.97227505 64.27891472 -152.21141855 {Pose: {Head: [93.35126147810718f, 179.39984174796808f, -6.337154477158099f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.23541406 64.58152224 -151.76689142 {Pose: {Head: [-88.61414403378697f, -5.813573409016471f, 5.06276199698217f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.34515396 64.60178963 -152.22379336 {Pose: {Head: [-88.98198880570004f, -0.043426476881070354f, -4.529687719538003f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.50965523 64.59395549 -151.71708651 {Pose: {Head: [-90.18673668250696f, 1.1473540257415111f, 5.441434469820125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.76184442 64.99045157 -151.97513935 {Pose: {Head: [-116.2454630699925f, -1.7507004368513561f, -1.9980372537473656f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.81163760 64.63307770 -152.22687053 {Pose: {Head: [-90.11662865270205f, -0.6010036358111459f, -2.2225505054307186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.58589475 64.59295513 -152.19194548 {Pose: {Head: [-89.11502646667596f, 5.912780643612726f, 3.3033694524044863f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.53639518 64.59950776 -152.16320497 {Pose: {Head: [-87.95121273154132f, 20.218410984192744f, 2.7101587535038667f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.34405565 65.07532933 -151.30555181 {Pose: {Head: [-90.3151027383705f, -9.550598787491783f, 0.17135350718538347f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.54767646 64.91358183 -152.31530281 {Pose: {Head: [-116.33110487951625f, -28.889735896640428f, 15.739622221127906f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.19566480 64.61198838 -152.24201120 {Pose: {Head: [-92.78179045221762f, -0.08213261285177155f, -0.0778241072929468f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.30056627 65.06781754 -152.30376881 {Pose: {Head: [179.95147978401684f, 0.8905017004175634f, 0.08408289256290585f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.77870959 65.56905504 -151.77745540 {Pose: {Head: [-179.9273179882307f, 0.3002253542395718f, -0.10828744322211037f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.31483616 65.06791979 -152.05351048 {Pose: {Head: [-123.60655442638657f, -0.06661440195586031f, -8.288168821205401f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.19662809 64.17114589 -152.81876952 {Pose: {Head: [90.33870669026508f, -81.09819609969217f, 1.3241654452458151f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.78556791 64.57641184 -151.95861606 {Pose: {Head: [-84.42310570780906f, -0.009997400831523506f, 1.0650791768556687f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.72542654 64.62476270 -152.32919552 {Pose: {Head: [93.0129063396529f, 5.42481119549578f, -2.186602671907199f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.25173992 64.66237526 -152.23136134 {Pose: {Head: [-90.88568448674786f, 0.32197902005867995f, -6.321070514615146f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.27683347 65.02718178 -152.18405794 {Pose: {Head: [-119.8419420113605f, 15.374184143562662f, -5.496278124949795f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.70870483 65.16445518 -151.27812308 {Pose: {Head: [-95.5694357492004f, -18.26046698133548f, 2.4613090661412027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.71555285 64.64868297 -152.05484920 {Pose: {Head: [-93.30404935371516f, -17.414935245599644f, 1.6947626818708759f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.21823001 64.56911987 -152.16272101 {Pose: {Head: [-89.73693652537972f, 0.0004532000637547647f, -0.11611561585686093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.82928312 64.59848899 -152.31199573 {Pose: {Head: [-99.5724763517354f, -64.0710905721589f, 28.801321798581917f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.78323879 65.14105481 -152.18012324 {Pose: {Head: [-146.39976059068533f, -17.863907847358735f, 0.5469925332566947f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.77923651 64.18519210 -152.82795381 {Pose: {Head: [96.26125136631727f, -0.08445515687084407f, 0.2829015475152304f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.63520766 64.10729851 -153.31259669 {Pose: {Head: [86.29356270231597f, 0.8362239254266465f, -7.541833613222393f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.42006675 64.97784185 -152.05835855 {Pose: {Head: [-116.27013439104542f, -9.782582340277939f, -4.254919275129551f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.77808011 64.58654274 -151.73530351 {Pose: {Head: [-89.00366809047246f, -1.2029892465570395f, -0.15704483982921613f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.77882029 64.66939909 -152.02507320 {Pose: {Head: [98.84191739678893f, 76.10064079610487f, -0.16242195374507848f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.32157733 64.02967543 -153.05254746 {Pose: {Head: [69.53147387023343f, -25.722774343265762f, -9.646235848721727f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.33718549 64.64488258 -151.79118039 {Pose: {Head: [-90.4533124238731f, 0.06959989083753076f, -1.1808933825682084f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.48032785 64.57069320 -152.22445090 {Pose: {Head: [-89.06806055498862f, 0.04092213765379401f, 2.7971278241129705f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.64070599 64.54985340 -152.21874931 {Pose: {Head: [-87.75800787817973f, -0.09976318459502938f, 0.9651592424351538f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.24069462 65.28131334 -152.05469406 {Pose: {Head: [-138.13017475921217f, -8.382439289406202f, -5.578253824367774f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.71362880 65.06721477 -152.28356658 {Pose: {Head: [179.49949858217664f, -0.03206304365749315f, -0.012668726679661412f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.84807148 64.16810262 -153.14970600 {Pose: {Head: [86.55241556847722f, -6.009706848072434f, 1.416012276446854f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.97527714 65.03399446 -152.08622475 {Pose: {Head: [-119.0998393893019f, -1.5192207526718202f, 0.5573607463838778f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.81785464 64.11163944 -153.22966794 {Pose: {Head: [86.5411379868899f, 1.9985771298960424f, -7.250863879522993f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.83995323 64.11677111 -153.25392945 {Pose: {Head: [75.48926035388997f, -0.07870492722597734f, -6.816242475205895f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.42131304 64.95953883 -152.04198394 {Pose: {Head: [-115.71832632886002f, -18.272578342006433f, 10.916189494707385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.22037433 64.78701216 -152.77878372 {Pose: {Head: [-96.01924735456059f, 89.73588384767407f, -3.5901860137759365f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.76643795 64.12768757 -153.30173959 {Pose: {Head: [89.86994672811478f, -8.074531159136704f, -2.127590165950328f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.81425628 64.44574761 -152.85324906 {Pose: {Head: [-83.34391142036088f, -103.36266081266314f, 25.256365053944766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.31874699 64.64135502 -152.23085944 {Pose: {Head: [-90.90628071134098f, -0.013786389021162299f, -5.359296090389139f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.52370069 65.04774680 -151.44648688 {Pose: {Head: [-87.09641448356884f, 19.674027146218457f, -1.531498327217074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.21015608 64.61918007 -152.22647575 {Pose: {Head: [-89.40096739734835f, -0.19305927332736073f, -4.56055676161453f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.77122809 64.99059367 -152.18341300 {Pose: {Head: [-115.85500560491424f, -9.700982189873026f, -1.9126530838048454f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.44238430 65.22348865 -151.37600599 {Pose: {Head: [-93.41018436480432f, -36.66638749777129f, -7.608708044373014f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



