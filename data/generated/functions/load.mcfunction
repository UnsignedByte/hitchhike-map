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

summon armor_stand 909.81966143 64.58281799 -152.24522474 {Pose: {Head: [-88.61598038690263f, 36.60948136018572f, 0.014896736196204258f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.73732252 64.14429545 -153.02735861 {Pose: {Head: [93.98460352909169f, -0.6435847873387193f, 9.921843804485517f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.79605114 64.07148607 -153.04245872 {Pose: {Head: [89.8625390263089f, 10.51811495718359f, 10.711083832226835f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.24920097 64.61232712 -152.24013367 {Pose: {Head: [-92.4886516789175f, 0.0015378677838622603f, -1.4104442482696584f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.59581609 64.56437340 -152.19680297 {Pose: {Head: [-89.19883097883232f, 3.309666770128361f, 0.15363318678739615f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.59507530 64.55936103 -151.87253035 {Pose: {Head: [-89.08139884855507f, -22.72138179183347f, 0.4727337071047462f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.20673286 64.62482851 -152.15847589 {Pose: {Head: [-89.91146884608953f, 24.456214107264984f, 7.196065795256245f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.83973497 64.15966264 -152.82514608 {Pose: {Head: [93.2643699881745f, 7.292313405401323f, -1.6648687293819975f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.49259263 64.68901897 -152.39126659 {Pose: {Head: [94.68184165991477f, 5.4673222588376635f, -7.149676808435206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.23525746 65.07424351 -151.41728604 {Pose: {Head: [-90.11354968398729f, -6.810829643149006f, -0.17886318413926766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.02723761 64.56460065 -152.22534291 {Pose: {Head: [-89.29048600146533f, -0.011304551042966326f, -0.06853607736231968f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.46433197 64.62781057 -151.67302090 {Pose: {Head: [-91.41724868296775f, 0.03706857484130577f, -2.67301508925492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.50973338 64.64127035 -152.51982959 {Pose: {Head: [89.59170236091843f, -30.246804127131476f, 2.4864670541534153f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.02374330 64.56794520 -151.74020221 {Pose: {Head: [-89.71021263055317f, 11.885568737958646f, -0.21358114357506433f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.77137678 64.07295923 -153.26541679 {Pose: {Head: [86.75738295420467f, -11.726007838374626f, -4.868579286819728f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.27614178 64.60568233 -151.68478707 {Pose: {Head: [-89.22096963779637f, 5.560388160839507f, 9.35100220944694f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.21957588 64.58832976 -152.18925336 {Pose: {Head: [-88.7159155698377f, 0.8612082994186321f, 6.306898928644458f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.14008327 64.14225005 -152.85626586 {Pose: {Head: [89.15982363426666f, -17.465838048591728f, -6.835384874424866f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.51547035 64.63977867 -152.23173726 {Pose: {Head: [-90.72166373067978f, -0.022667278461645998f, -2.6999332857908747f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.76240212 64.12526923 -152.78424315 {Pose: {Head: [92.84612939551357f, 0.007897367809894832f, -1.8149289281925596f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.72217495 64.59711205 -152.09785023 {Pose: {Head: [-88.67641017557214f, 0.038131937644845064f, -2.0618831070121f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.71936638 64.60026484 -151.66940048 {Pose: {Head: [-90.70695209681558f, 0.022015365681930292f, -0.6067326796063236f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.78157817 64.65990581 -152.16114753 {Pose: {Head: [-90.00026720754136f, 17.313143090708355f, -7.255209646309615f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.44386562 64.13092606 -152.78552415 {Pose: {Head: [93.1164072666301f, 0.045642102851814616f, 9.577043033496087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.96217819 65.11177486 -151.71796001 {Pose: {Head: [-88.03107695710801f, -89.87765643001305f, -3.577024932781452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.62271924 64.81327119 -152.13182769 {Pose: {Head: [-101.61832571440871f, -72.65828655008823f, -7.857570124616205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.70813555 64.15316721 -152.85255667 {Pose: {Head: [92.86044434940378f, 3.7938374205027436f, 10.150008852648085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.74595422 64.17728383 -152.82011390 {Pose: {Head: [93.38707798841666f, 1.0291001419002759f, 9.992058912042665f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.28348657 65.57421732 -150.70320337 {Pose: {Head: [-90.00002200304775f, -0.3316034398738349f, -0.00002074318820864541f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.82159421 64.11098389 -152.88111470 {Pose: {Head: [89.14272834732897f, 2.8960512008688215f, 0.49023023878655186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.22132216 65.07524450 -151.17643396 {Pose: {Head: [-88.20461279117963f, -0.040445341198833536f, 0.547457727158797f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.37193019 64.61423870 -151.84209303 {Pose: {Head: [-89.63094061700995f, 18.309143959387374f, 7.039122181292181f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.77158580 64.59498910 -151.46919517 {Pose: {Head: [89.04986934455458f, 157.74259346555706f, -7.128655447457312f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.04242613 65.60138417 -150.77771439 {Pose: {Head: [-90.42906860916663f, 0.019129863832629993f, 5.70725878131943f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.63005961 64.59256775 -152.48432803 {Pose: {Head: [89.77291065084613f, -15.56006342947992f, 3.74045506408152f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.11297929 64.12575582 -153.16478663 {Pose: {Head: [90.09186454629828f, -32.45074965852964f, -0.22018907824454595f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.56610787 64.69895886 -152.22614681 {Pose: {Head: [-91.27234458327754f, 2.2919431361740807f, -0.606280240848486f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.91961937 64.67898316 -152.64102405 {Pose: {Head: [-92.85958612035932f, -79.02912336165004f, 0.2624504519366071f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.82046735 65.57417165 -150.71070243 {Pose: {Head: [-90.00826494165057f, -4.587756553865011f, 0.017382951894479557f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.96814224 64.57711539 -151.71337598 {Pose: {Head: [-87.02520141501562f, -6.046501290693466f, -1.3023890223408623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.49217017 64.64071074 -152.30635192 {Pose: {Head: [91.7968550867666f, -54.222897963560264f, 2.7487033075361618f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.77539654 64.13997400 -152.80681594 {Pose: {Head: [89.168245083897f, 2.9697326131861765f, 0.4842844981784497f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.44087978 64.59336679 -151.89498275 {Pose: {Head: [-87.29869307925277f, -0.9109075982206006f, 9.29060565561819f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.63991810 64.19123559 -152.89422512 {Pose: {Head: [93.80256855023752f, -0.12724497413402164f, -2.417636104407262f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.43555386 64.64074587 -152.82397552 {Pose: {Head: [-94.55510357880648f, -97.66169497374983f, 2.22167918569069f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.31611267 64.21606256 -152.84073018 {Pose: {Head: [95.19863148232365f, 4.003122856853701f, -13.25506350043155f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.32733490 65.05911849 -151.52572544 {Pose: {Head: [-88.4553725290514f, -7.258913650315909f, 0.2690002414160187f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.05548412 64.55179531 -152.22041490 {Pose: {Head: [-88.21795677136373f, 0.16439017663265157f, -0.01870396930671284f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.79193296 64.58251921 -152.19593217 {Pose: {Head: [-89.24998450585761f, -4.156272617898644f, -2.444990188761242f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.26595887 64.64290550 -151.79760360 {Pose: {Head: [-91.43638831248938f, 0.20913714530658115f, -2.6234686340650963f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

summon armor_stand 906.07133663 64.60066127 -152.49082263 {Pose: {Head: [90.18986024225543f, 2.1452019384964762f, 2.7418207954962655f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.04101610 65.21926852 -151.27359905 {Pose: {Head: [0f, 90.01984915719876f, -90f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.29165952 64.55565243 -152.22121695 {Pose: {Head: [-88.32666870824967f, -0.07406099810175855f, 1.2478678465518993f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.29555609 64.28172068 -152.81267305 {Pose: {Head: [102.27674809296019f, -0.03587749659847097f, 5.023748073361222f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.40909164 64.55807071 -152.16705330 {Pose: {Head: [-90.19011155496614f, -36.55712122791907f, 6.790108315870977f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.79543400 64.54729702 -152.04587266 {Pose: {Head: [-86.05916899883763f, -13.979938990324856f, 3.6156481202604085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.47596535 64.06062389 -151.99971482 {Pose: {Head: [8.566918379031371f, -5.161856648659386f, 1.2567423044207096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.08062839 64.58712645 -151.67366051 {Pose: {Head: [-91.60209456265389f, -0.014190522474414477f, -1.9365980805512273f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.79521250 65.19766754 -152.22382260 {Pose: {Head: [-162.91102717681574f, -19.827172538421134f, 5.902887701611439f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.37047002 64.62518360 -152.21006895 {Pose: {Head: [-88.07867003402075f, 2.7627046893575504f, 3.3879957734370376f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.79184768 64.63391817 -152.01039869 {Pose: {Head: [-93.86688624306436f, -6.936944441014879f, 0.4270282981574502f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.91315277 64.66016045 -152.23685103 {Pose: {Head: [-93.98351305620444f, 3.065053347278773f, 4.578229625746988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.56258984 64.07400399 -152.77131804 {Pose: {Head: [89.96084009657547f, -0.0018287639508764919f, 6.973769672490609f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.69156840 64.60961383 -151.81535704 {Pose: {Head: [-93.04319333229994f, 4.971188128633418f, -0.5020213618910754f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.50288234 64.22322333 -152.09245139 {Pose: {Head: [25.565859591105273f, 8.946294261071435f, -52.733147930528055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.60626839 64.57312284 -152.38223167 {Pose: {Head: [90.020512254136f, -2.7021969142471867f, -1.401197468079841f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.28452462 64.23570386 -152.73591291 {Pose: {Head: [99.74317079945554f, -43.544882894593286f, 0.2998612585205784f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.59204204 65.03201580 -151.96439502 {Pose: {Head: [-125.97415011137554f, 12.278825342527597f, -0.9662844021556165f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.44931488 65.10177075 -152.22272248 {Pose: {Head: [-171.11092189223453f, 0.20869891079600347f, 0.04362730340416213f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.45180791 65.07434098 -151.33070091 {Pose: {Head: [-90.0172975018214f, -18.45806943603937f, 0.016533238992092397f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.49763572 64.69171598 -152.14489289 {Pose: {Head: [-91.21241544743394f, 17.548958467398297f, 11.682643416265172f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.78945404 64.61898162 -152.21385096 {Pose: {Head: [-86.69377983908672f, -0.008621359861727141f, 11.310705123649258f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.72397646 64.70123381 -152.22251911 {Pose: {Head: [-90.65545297795389f, 28.9059084822462f, 12.00483884577986f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.80493285 64.61583434 -152.19546577 {Pose: {Head: [-88.55504405372017f, -0.16719618199599892f, 5.168845221252396f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.48655271 64.62090855 -152.22690987 {Pose: {Head: [-89.65590184600858f, 0.009070280768454193f, 2.136571745469728f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.29292197 64.13275854 -152.79065721 {Pose: {Head: [94.44542817885613f, 0.01158107415834092f, 2.7955411733826225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.62919519 64.00909887 -152.03963764 {Pose: {Head: [16.980569597270392f, -17.789929829395074f, 3.3877513091080584f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.43799322 64.58341748 -151.72336542 {Pose: {Head: [-89.12182335045287f, -8.958685887544242f, 8.42284328729118f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.27679120 64.60702652 -151.73135744 {Pose: {Head: [-85.55919454226944f, -3.3980804757012675f, 3.343518093238308f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.74757999 64.21153195 -152.80103814 {Pose: {Head: [96.7634072974161f, -0.09342584823103854f, 6.8815190601137575f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.59667258 64.19664388 -152.92970199 {Pose: {Head: [97.28370607578087f, -0.22803994559747792f, 6.934114398470972f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.13447419 64.66750672 -152.19472886 {Pose: {Head: [-89.23593683879112f, 14.98422338203641f, 4.686349038262374f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.00893170 65.22480376 -152.18788543 {Pose: {Head: [-165.0036643712035f, -14.225351187273878f, 18.943612555266846f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.23008848 64.56348643 -152.05716659 {Pose: {Head: [-86.87344806580577f, -0.11284299116372372f, 2.500196091532928f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.09390266 64.57215992 -152.22567304 {Pose: {Head: [-89.83085552393446f, 0.5623619373016777f, 0.07137878197028737f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.79651129 64.58512153 -152.16212525 {Pose: {Head: [-89.91880952623205f, -0.044605504049374634f, 3.2809433622780406f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.86254427 64.54663157 -152.48734214 {Pose: {Head: [90.0412609666459f, 1.3742714145272132f, 0.10338044318636874f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.11512625 63.97695821 -152.61173027 {Pose: {Head: [89.8069397787877f, 55.21010116959154f, 20.897897450957622f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.32089446 64.62735844 -151.78142647 {Pose: {Head: [-93.04563431363124f, -4.065283366849153f, -3.2978200147676056f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.95774755 64.68239203 -152.15283609 {Pose: {Head: [-93.39964411454507f, -0.11600579455112202f, 4.7757778969692515f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.03201827 65.17122080 -152.27595717 {Pose: {Head: [-163.17366195792184f, -14.860728115082765f, 3.042774642648089f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.39448070 64.58962276 -152.22749575 {Pose: {Head: [-89.76159663140022f, -0.05936266131018327f, 6.199034887342283f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.21062849 64.63066944 -152.21721708 {Pose: {Head: [-89.49323848427528f, 2.6406747421205856f, 13.032666343045062f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.51226443 64.64300720 -152.12819616 {Pose: {Head: [-86.39203972878033f, -41.39097495858947f, 2.1816194123892267f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.61528632 64.27865509 -153.37238158 {Pose: {Head: [99.99223092850663f, 0.00681519608222829f, 5.158134402414494f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.30453985 65.08460597 -151.48282106 {Pose: {Head: [-89.77393275804448f, -1.3726813617217448f, 3.5099176848285683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.36795894 65.16221836 -152.24250865 {Pose: {Head: [-171.25075569617556f, 0.9985710762675323f, -3.0162013902291602f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.79822730 64.23822757 -153.04969534 {Pose: {Head: [101.00555729823938f, 21.575711191952532f, 10.677258449917236f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.32675477 64.54661935 -151.72382372 {Pose: {Head: [-84.98825423402567f, -7.4602215510928245f, 2.0446665422943995f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.72111573 64.12880139 -153.30694704 {Pose: {Head: [87.70875306328206f, 2.3244951890420893f, -19.488024111744807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

summon armor_stand 901.36726566 64.10176689 -153.08225426 {Pose: {Head: [86.16826439895848f, -6.899617060359919f, -2.3658560759781806f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.54836167 64.64761581 -151.73567301 {Pose: {Head: [-93.3525927146184f, -3.050003531065294f, -0.2804161195441053f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.27949904 64.71043818 -152.25873476 {Pose: {Head: [-100.31279182863486f, 10.052485377479714f, -1.4948555868468179f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.50837479 64.67859735 -152.25257186 {Pose: {Head: [-94.83940969009677f, -0.07872089912792085f, -1.5556869951104275f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.77001518 64.09856189 -152.77334328 {Pose: {Head: [90.40175182870927f, -0.01611937267338609f, 2.3904012128859495f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.21777304 64.04063808 -152.76651940 {Pose: {Head: [88.80613030028327f, -0.1547421295402807f, -0.22616342504530904f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.96550455 64.70761707 -152.26045258 {Pose: {Head: [-97.8147414342775f, 2.677106667211842f, 8.56821072478691f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.60064580 64.68117877 -152.93846585 {Pose: {Head: [-90.59558760403982f, -137.63383315667187f, 5.298508582958007f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.99910719 64.62755793 -151.73892398 {Pose: {Head: [-93.39147139429171f, -3.1044068861597456f, 2.225065583187351f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.90551619 64.84434158 -152.50435285 {Pose: {Head: [-96.14461715020015f, -99.78225801585013f, -10.632461449014029f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.78092504 64.57086487 -152.01882012 {Pose: {Head: [-89.77634230666689f, -0.002207272097469461f, -0.08469420244632846f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.53512758 64.59938977 -151.66912106 {Pose: {Head: [-89.13200817289588f, 1.7831536306480964f, 2.7429593916117634f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.25944028 64.54847700 -151.75695465 {Pose: {Head: [-90.46676971606765f, 52.48931581461989f, -2.3683014224093752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.77293594 64.71145136 -151.78504484 {Pose: {Head: [-94.65099706082384f, -19.178553722974424f, 0.05625256652671418f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.22239488 64.11712629 -153.14927325 {Pose: {Head: [86.24116617736469f, -7.114671801549489f, -3.951755981115103f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.93775707 64.57917066 -151.68051204 {Pose: {Head: [-91.10703064810221f, 2.5097417902832513f, 0.9898514250506818f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.22653448 64.61302822 -151.84825158 {Pose: {Head: [-91.52932251167167f, 20.643382216841147f, 0.7843408183725519f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.86878489 65.07734654 -151.26630338 {Pose: {Head: [-90.62033336939064f, -20.479843383111447f, 1.7080327636610404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.82336888 64.06933987 -153.20466005 {Pose: {Head: [85.73148335086549f, 17.88587979911199f, -6.584713180182346f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.37201603 64.58102923 -151.97586026 {Pose: {Head: [-90.03648242846108f, -15.379731896178972f, 6.708398704178571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.04254640 64.59175225 -153.34762043 {Pose: {Head: [-86.76413604509628f, 179.9979868807729f, -5.6333503051619225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.98520243 64.22525292 -152.80916045 {Pose: {Head: [92.40074548117887f, -1.3544236941064254f, 4.619257559771588f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.09483489 64.66063462 -151.76388258 {Pose: {Head: [-90.13207472891747f, -8.767413898949808f, -4.056647744027746f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.77439111 65.57421707 -150.73402846 {Pose: {Head: [-89.99999970221499f, -0.0006235757714445792f, 0.000016020127002467597f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.73530313 64.27935853 -152.80895899 {Pose: {Head: [100.46314224164267f, -0.03678270550560195f, 0.9023319122334408f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.22892167 64.99832939 -152.43243640 {Pose: {Head: [167.83385400037386f, 0.04739681790905378f, -0.009283981189810041f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.80634499 65.09562863 -151.56753537 {Pose: {Head: [-89.54860963056475f, 30.9094014133623f, 3.1199333649854686f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.32179602 64.64021843 -151.70694211 {Pose: {Head: [-89.41576266695662f, 4.413185806452101f, -2.956018112040986f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.61394171 64.07055428 -152.00486594 {Pose: {Head: [77.95388609420343f, -169.64169964542117f, 1.9659261807123254f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.89501852 64.10762044 -153.15417034 {Pose: {Head: [85.50043794148802f, 15.780970307856592f, 4.829152572603765f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.52679013 64.61761330 -151.72061641 {Pose: {Head: [-91.23319077415468f, -6.319693657940433f, 0.1886200084055204f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.15583429 65.07421731 -152.32326129 {Pose: {Head: [-90.00000826195958f, -174.99961690499148f, -0.00002751765852526861f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.52259892 64.72659421 -152.24993971 {Pose: {Head: [-99.16791783599196f, 11.331229338180215f, 1.4256711078009958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.69239589 64.59494050 -152.21904052 {Pose: {Head: [-89.90817447392973f, 2.710518763028772f, -0.6390853028901742f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.03810842 64.18439223 -152.80630609 {Pose: {Head: [91.34009105371868f, 12.01683122492288f, 4.959988259000052f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.83847980 64.64803619 -151.69872948 {Pose: {Head: [-91.69346207697045f, -6.172717676607054f, -0.33721956557243743f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.65595309 64.59173881 -151.77388153 {Pose: {Head: [-91.30575863058519f, -0.19532573811117712f, -0.19444727988005658f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.83459103 64.66622095 -152.37845494 {Pose: {Head: [92.75828974750044f, -24.725864353524155f, 2.545885967990564f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.24238472 64.66841634 -151.84803931 {Pose: {Head: [-93.99302064203249f, 10.115488763922148f, -0.9737505968460468f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.10431431 65.10978342 -151.40448655 {Pose: {Head: [-87.49603733301734f, -22.703626423847883f, 2.233534010517673f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.86042717 64.56835989 -152.22425520 {Pose: {Head: [-89.68821796884983f, 0.7560796084763095f, -0.587824562918696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.18168071 64.57651479 -151.84734583 {Pose: {Head: [-90.0373048227473f, -15.078004599958083f, 5.258543356029789f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.75422131 64.71755241 -152.16005003 {Pose: {Head: [-101.27157533181844f, -5.5854873148896855f, -0.3360610110220285f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.50313546 65.07432650 -151.17351847 {Pose: {Head: [-90.00208162853738f, -1.9244635479129513f, 0.1546280510810555f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.91646195 65.57421722 -150.67284662 {Pose: {Head: [-89.99999880065464f, -1.747926530007719f, -0.000005695228173016434f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.49746035 64.57693698 -151.75792647 {Pose: {Head: [-90.71585934532719f, 2.573307968050904f, -0.024429040499782798f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.77100845 65.62682411 -151.56667113 {Pose: {Head: [-149.15895436965872f, -0.033213787483337365f, 8.259237322061178f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.20981074 64.06993198 -153.29914082 {Pose: {Head: [83.93600030608214f, 0.9927298656426222f, 8.076028651197424f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.17530850 65.07809167 -151.31449941 {Pose: {Head: [-87.38486985787182f, -30.651266713374923f, 1.8450111136806011f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.71879455 65.57421707 -150.67793458 {Pose: {Head: [-89.99999856739836f, 2.988284944539877f, 0.000016422015159420783f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



