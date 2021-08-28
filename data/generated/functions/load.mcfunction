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
summon armor_stand 1.7968782792414935 63.3125 2.962085191117346 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1644420890395155 63.3515625 2.3581613834516464 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5721275574673784 63.390625 2.5344840067825896 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6509267103101646 63.4296875 2.9856139960542283 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6825153830971356 63.46875 2.7636664665643496 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6356835592632173 63.5078125 1.5795635672945014 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.058547921199528 63.546875 2.961074268904923 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9135093578606932 63.5859375 1.4159913877048669 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8730145021368722 63.625 2.504821722798228 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2929364081962786 63.6640625 1.372665834967555 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8548018660737366 63.703125 2.0737877480888036 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2900425215100126 63.7421875 2.693011586202446 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9629160283754181 63.78125 2.238645045573235 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4851620530469705 63.8203125 3.1737042110000644 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9950497313002016 63.859375 1.20564729304639 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4312734682228159 63.8984375 2.1897200439582143 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9460989396423836 63.9375 2.293905194700547 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.209392091744927 63.9765625 3.1464229534732895 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6345812485370038 64.015625 1.9294146679883863 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1981123606629294 64.0546875 3.1067229007757367 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44068111814213573 64.09375 1.1449143453279844 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8617789422029465 64.1328125 1.354092832939096 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4686744810025605 64.171875 2.956743629267555 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5850853622504593 64.2109375 2.9705870841259 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7236957474510144 64.25 2.3550589005227787 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.409564525837363 64.2890625 2.737035987986213 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4178319833281138 64.328125 2.2952017479533033 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.132655017046887 64.3671875 1.8513576122921955 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.281869278064885 64.40625 1.5963753800842702 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7391889443144753 64.4453125 2.3435755246420946 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0445145406980734 64.484375 3.1469435257847884 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.657133063804163 64.5234375 1.3037054518935798 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5184653462158062 64.5625 1.5126093773005267 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3306817268293164 64.6015625 1.2871147811539818 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3919197067666222 64.640625 1.9517787716419448 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3211441277154625 64.6796875 2.6603813455919356 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0530216972249713 64.71875 1.0771335777845512 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0769187855638687 64.7578125 2.6737392760453575 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1916156989806685 64.796875 3.44065495629898 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8851301015089073 64.8359375 2.6276379295836154 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7893322228504998 64.875 1.550376629797292 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6225389172176047 64.9140625 3.165594482840763 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.469423874931469 64.953125 1.8958537019617854 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6918776800430364 64.9921875 2.425394900387965 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9072735454036551 65.03125 2.255084495564981 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1327378957987897 65.0703125 2.0702309940463155 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.185423218692862 65.109375 1.1120772345760837 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6274720991680263 65.1484375 1.263952958901121 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2152689460262083 65.1875 1.9761245555483358 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7073216762974646 65.2265625 2.159912515405243 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5688531317289112 65.265625 2.0903058562742975 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0570169520050048 65.3046875 2.793021013694708 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7891985212571303 65.34375 1.7106726297170907 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4138100011878438 65.3828125 3.319901895915918 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4085575279670842 65.421875 3.320728127981432 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9369214247772932 65.4609375 2.695418202189181 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0639940949463995 65.5 2.1323370035495737 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.811565782234101 65.5390625 1.1661196311716395 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.569684315904451 65.578125 1.8419053865392843 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3791917167733663 65.6171875 2.0977343238325443 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8990468771641584 65.65625 1.2353687331253864 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1838616307423564 65.6953125 3.356208046847132 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.375538971360417 65.734375 2.5112160869708484 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.075338284074024 65.7734375 2.3617383910271164 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4677721825559102 65.8125 1.3269907372516512 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0838548418513687 65.8515625 2.309473901061173 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2010886140061756 65.890625 1.1973338354882823 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.753212754997441 65.9296875 3.2578548569452046 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4031084593589727 65.96875 1.2105030268338501 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.269106465403934 66.0078125 1.941386648345877 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1292778154805883 66.046875 3.4071386667181063 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0475303506663525 66.0859375 1.858823687672626 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4464980233032931 66.125 2.0407432583425282 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.847055191446512 66.1640625 3.4155202690123247 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.009327795453954 66.203125 3.2931751440202532 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7296685482961573 66.2421875 3.011312975106457 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3800771714473195 66.28125 3.011046053441168 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6512063270773494 66.3203125 2.1217025540857124 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1448555550387347 66.359375 2.444876462046895 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3934767804866635 66.3984375 2.3133165104243556 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.483795121852751 66.4375 3.2734375336862755 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0037590232080156 66.4765625 1.1978250028536812 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7953684643050158 66.515625 2.683227900979435 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.381933697938264 66.5546875 2.702730372031149 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9900793922952524 66.59375 1.775950348547432 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2362277393200372 66.6328125 1.1801334056320927 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47493830369974355 66.671875 2.4609066731359253 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6025153772077014 66.7109375 2.120167149626641 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3569616281176575 66.75 1.1597675555769986 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1092607429587016 66.7890625 1.6364265787951342 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0584584662166003 66.828125 1.928871798410205 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6339335841356788 66.8671875 2.249915367443946 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4883230935056577 66.90625 2.6101014188980862 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3131861888681198 66.9453125 2.4111256948023465 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1793116327763569 66.984375 2.4696250761668455 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8582755161344822 67.0234375 2.948780866480959 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5568110301036402 67.0625 2.470001393145802 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.121513602452405 67.1015625 1.4048551239376064 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6615517823371377 67.140625 1.6589282274995814 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0658692067401176 67.1796875 2.609183425835522 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3549232757300756 67.21875 1.1269479390984614 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0359746350942771 67.2578125 3.1337926934318725 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3196294597067529 67.296875 1.4354650095435915 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9980969010615237 67.3359375 3.246849259254648 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48840733139085934 67.375 2.0968527609957386 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5852559388814318 67.4140625 2.0329162934968434 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1170151725558952 67.453125 3.415586692473625 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5402668034677252 67.4921875 3.293372747241691 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5700240480836842 67.53125 1.7964497017541616 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2908871283658712 67.5703125 1.3765272219962092 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.562600499039601 67.609375 1.4434865879977319 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4901869365743492 67.6484375 2.5723926112260598 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.254451231224008 67.6875 2.9695706146040886 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6671823628333045 67.7265625 2.2775460232222913 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.357541470680388 67.765625 2.4133481816180344 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3759868070056799 67.8046875 1.3699691756070256 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2772362356069316 67.84375 2.222891241426778 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6993116102054736 67.8828125 1.411926090112202 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8917876095930113 67.921875 2.962690900414165 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.549458052884683 67.9609375 2.8876416691643065 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.021763375388445 68 1.5991958404483602 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4906533323333546 68.0390625 2.968804029160782 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0938853099340144 68.078125 2.5067864464551253 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7455368583924489 68.1171875 3.2405718344379855 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.337557770972969 68.15625 3.303561708450321 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6583179522605804 68.1953125 3.014398543633689 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5074920760610933 68.234375 2.006279475843465 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4642260706889193 68.2734375 2.395653667130918 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5120035122480417 68.3125 2.476151576720108 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.290497377683531 68.3515625 1.1477779758218452 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3832296124515981 68.390625 2.68886672514343 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.607199988812533 68.4296875 2.2607740945468504 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49976444810495835 68.46875 1.354375896566206 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8719127189866136 68.5078125 3.2290946325388425 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7450290806143545 68.546875 1.6617719277804248 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5991244895950105 68.5859375 2.784357502783827 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6436912873607106 68.625 2.7319971683564965 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.595652707247853 68.6640625 2.3852695224960634 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7754759790159588 68.703125 2.88194511854774 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.56421704644561 68.7421875 1.441566321630663 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2785740717741407 68.78125 2.3875369818137027 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1862653982350864 68.8203125 3.338386917754582 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0214121775947933 68.859375 3.1643200735671604 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.667131248122387 68.8984375 3.3550444686830647 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2444362985602013 68.9375 2.1636176820090136 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.656382435805366 68.9765625 1.167336677035431 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33838102407112325 69.015625 1.9073823049258172 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8108156399649982 69.0546875 3.2828030910290136 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2434795684365791 69.09375 2.687934492044318 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.049264571077596 69.1328125 3.3517293816612903 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.533542547291947 69.171875 2.6335605390654315 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5381333389183038 69.2109375 2.5521110879150717 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7730617840387942 69.25 1.8840000046345344 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3218468228357373 69.2890625 1.307722128786349 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6777566424204213 69.328125 1.9828313855109894 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.653081431605561 69.3671875 1.9534492178748055 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.496310015921579 69.40625 2.1161000158719343 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1065978962793865 69.4453125 1.1624174897343882 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2059128067237301 69.484375 1.3713305895874637 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0488001204091897 69.5234375 1.168346588675417 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.611655810325785 69.5625 3.2712502010404125 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2938998886873747 69.6015625 1.239833783337707 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5061125793478329 69.640625 2.5721116657478937 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0817906538666793 69.6796875 1.1709857161416095 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8814580020172367 69.71875 2.1279063491478203 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.488141765229266 69.7578125 2.866510678919672 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2297029203852152 69.796875 3.082183295237068 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7486809855629977 69.8359375 3.2148497075807336 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9641516425055453 69.875 1.5880458911091255 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9018155669764636 69.9140625 2.281918478382761 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.283057865539754 69.953125 2.4709833246790245 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.595552502612044 69.9921875 2.820635638423744 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5670500129973435 70.03125 1.4622529128706725 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3939194999213138 70.0703125 3.034815192676258 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5228918817923623 70.109375 2.247592933425363 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5249314599232595 70.1484375 2.723818795789867 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2020757835865856 70.1875 1.3543382020155335 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.363458880951397 70.2265625 2.180474026796812 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4075861562798232 70.265625 1.0816537412169902 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4588630579569672 70.3046875 1.4909059205898338 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4468474283270982 70.34375 3.411408776729954 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9516498601194896 70.3828125 2.290852427331914 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.330681863929308 70.421875 2.513095467207473 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34365482445931916 70.4609375 1.9801049396104775 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4465077940395923 70.5 3.1205154559500157 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.329778246205235 70.5390625 1.1201389524659717 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3945359855882117 70.578125 3.215536921905038 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3474200651979023 70.6171875 2.6606422182697713 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3885863560707181 70.65625 1.6589269214132347 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7851842284976125 70.6953125 2.06205626783301 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.433602098345496 70.734375 2.2603349330945806 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.043617538839688 70.7734375 1.6204745273505972 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49200745972242277 70.8125 3.134083660020046 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8304695429989795 70.8515625 1.880993466365004 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7356401639445943 70.890625 1.971195975328376 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.209130634099436 70.9296875 2.048291330777368 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7652957625340127 70.96875 2.5614641019549955 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6756854532029843 71.0078125 3.3970806967815514 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.687498357386187 71.046875 2.985645259560272 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8984759851839281 71.0859375 1.344183766797192 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5465968394481585 71.125 2.6132425012101086 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.504741403156114 71.1640625 1.9676150641479566 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5442004650371977 71.203125 1.773528105125446 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.037600642755663 71.2421875 2.2687171566384605 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2988028338109228 71.28125 3.0622774538034996 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8521411918794808 71.3203125 1.2107045719440754 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1266394010100877 71.359375 1.5254574611217304 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3525217922569817 71.3984375 2.322932760752341 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.043087727744314 71.4375 1.8282257016714636 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.941523997428459 71.4765625 1.1837701025705245 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6149688607241846 71.515625 1.833574457335883 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37482243504335044 71.5546875 2.8060739078031722 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.203739618572739 71.59375 1.5642999761878582 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6977601241941074 71.6328125 2.056018122671872 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1382978760447622 71.671875 3.0191495775265036 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7951318431476253 71.7109375 2.07679796382288 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.197996172280066 71.75 2.2726315169017437 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7021927176487455 71.7890625 3.1104552888685113 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.505410407943577 71.828125 2.559975731360355 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6773081656567791 71.8671875 2.9076273370117263 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8404201149881794 71.90625 1.6702801529561757 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.522873746588422 71.9453125 2.6415579337226682 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5385951323066123 71.984375 3.2541969160258932 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0169929521126857 72.0234375 2.5708957558294965 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1002802229008974 72.0625 3.0563634340763346 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3890541797402456 72.1015625 3.2794834300074096 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.686172170919901 72.140625 3.4178373502982486 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2017220304043326 72.1796875 1.6328840618373492 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5420822468654192 72.21875 2.2307759396739355 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31729110299924224 72.2578125 3.2490281872474287 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.223219781428254 72.296875 2.7322282129980895 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8756134349309699 72.3359375 1.2787044641757173 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1776500922854796 72.375 3.0577599885021067 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5540896367897474 72.4140625 1.4846109003691061 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.874808611218161 72.453125 1.8636441784627764 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5955094978633237 72.4921875 2.1179943623885222 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3668758563049113 72.53125 2.058498649153468 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.868221131648253 72.5703125 1.8031501218803416 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.462828220195298 72.609375 3.245418005688785 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8702598613131395 72.6484375 2.5369636592307327 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.897107583729333 72.6875 1.4192998997625328 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33925745658107287 72.7265625 2.405657694948177 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5777920394513587 72.765625 1.4764820908452445 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6381405984409603 72.8046875 1.6056346568983861 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3127092649748917 72.84375 1.8435044229822752 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9616973990423432 72.8828125 2.618506202475725 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.055913214082149 72.921875 2.908306526973856 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.489413781256671 72.9609375 2.234508425915271 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.992110489451401 73 1.421781463768415 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.333899996648191 73.0390625 2.6987475416176574 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34009518688572926 73.078125 3.1453004334721886 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5790067222554045 73.1171875 2.0373956150928327 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8323584956205838 73.15625 1.2326650382056616 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.496483437016181 73.1953125 1.0881717623845801 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8795196711501174 73.234375 1.8400369395185037 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5198205117218211 73.2734375 2.330315262789621 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4777384338587808 73.3125 2.9244210384965257 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4795279167350361 73.3515625 2.184221742273748 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7733369979360815 73.390625 3.3478562215517766 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.55036903929038 73.4296875 1.3912694214815176 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8860243068392286 73.46875 2.709472023920916 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3590363126353524 73.5078125 2.7368737630415447 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5754616343435566 73.546875 1.4939621422796021 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8370263827889868 73.5859375 2.1524188041847836 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9767274402741752 73.625 2.95433590605649 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.419610054769719 73.6640625 3.336958736508785 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0467079306133507 73.703125 3.121451352111458 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3284695973180156 73.7421875 3.3724814115824002 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2261251172355943 73.78125 1.2695643033018362 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4609802953077653 73.8203125 1.938006451765963 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33474975420062325 73.859375 2.7478693880515355 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8066039497799815 73.8984375 3.2845901280697762 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.383652429791583 73.9375 2.4339650821737706 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4669005321362465 73.9765625 2.8785576257461134 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5770659379063128 74.015625 1.8768906397430425 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.33442733002078 74.0546875 1.4820751413428497 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2696343774472416 74.09375 2.1585913924396154 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1460774244622307 74.1328125 1.2131212621918306 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.81480581705009 74.171875 1.4993671072879506 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.355139296466351 74.2109375 1.4071127421937581 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9979117329677376 74.25 1.358404162591098 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4535155528748347 74.2890625 2.0847262031261966 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.145595544739164 74.328125 2.727779947229545 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4454647303082597 74.3671875 2.994865791994826 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.510700952444584 74.40625 1.9559741889184505 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4753453450037746 74.4453125 2.88109925789265 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.171548109756756 74.484375 2.3233829596955324 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8112972252654183 74.5234375 3.4290283363988663 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2634170059131153 74.5625 2.35825572258386 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3792636857502237 74.6015625 1.3923502498142617 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7245587568297303 74.640625 1.1925054370741544 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8180545734440845 74.6796875 3.0824487572021337 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5063572163585714 74.71875 1.9149078838274218 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.45904280020266586 74.7578125 2.1889463056178604 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.671992707770158 74.796875 3.1801017833443743 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.433412947054055 74.8359375 1.9447459315689417 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.39380937439534 74.875 2.08479267721012 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33770425137845794 74.9140625 2.7870611034724377 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0813073570403198 74.953125 3.0914229922814123 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2606709763525674 74.9921875 1.8168754331564592 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



