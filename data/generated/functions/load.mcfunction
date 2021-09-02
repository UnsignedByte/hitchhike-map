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

summon armor_stand 911.49939012 65.93663442 -151.22438458 {Pose: {Head: [178.3031198723516f, 0.3703071563573094f, -4.157751323038483f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.36303746 65.03753133 -151.35231640 {Pose: {Head: [-89.84502852298401f, 15.28932250774707f, -0.01954460844166975f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.30697286 65.87903704 -151.07457362 {Pose: {Head: [-122.3955129618363f, -1.6381642899538185f, 1.989605432739581f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.43694842 64.61887522 -152.48973397 {Pose: {Head: [91.13011401743992f, 6.497057030956434f, -0.22960520515251467f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 911.30034324 66.34255295 -151.71787604 {Pose: {Head: [178.7425150854042f, 0.7053490069257143f, -21.209273986389007f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.86881191 65.77917434 -151.06941815 {Pose: {Head: [-114.11323997652707f, -31.608053716148557f, 3.953368386478396f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.81922432 65.60615939 -151.54146570 {Pose: {Head: [-147.5129607670372f, 8.816386155669147f, 5.627796177532411f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.86334532 65.57931399 -152.07868991 {Pose: {Head: [-168.99721620308915f, -16.520302997709756f, 16.21347496950218f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.63674723 65.65630856 -151.71170311 {Pose: {Head: [-179.7166986683521f, -0.23588985531992315f, 1.5004115227287107f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.68404650 65.54111185 -150.73432449 {Pose: {Head: [-86.76451548166655f, 5.594346253706411f, 0.5629516658070227f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.53506889 66.09619571 -151.17275991 {Pose: {Head: [-167.96760526221047f, 5.068336234215406f, 0.0001265185885292396f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.78466962 65.51770950 -150.82961722 {Pose: {Head: [-88.66084571557971f, -0.20347096717232713f, 0.8177031886990579f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.87965435 64.61997911 -152.57335743 {Pose: {Head: [91.05917805410701f, 0.7922257726692598f, 0.267214274990849f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.84735007 65.78050392 -151.09023382 {Pose: {Head: [-121.09802815354786f, 16.17714056750544f, -9.91600653734942f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.72858705 65.57947722 -150.65657755 {Pose: {Head: [-86.62110751134112f, 0.005464000181698166f, 0.11287421330887927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.70052628 65.64607782 -150.84685064 {Pose: {Head: [-87.05916826369132f, 4.763946112199858f, 0.8748751238195642f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.82040651 65.20764092 -151.47239612 {Pose: {Head: [96.37366522195939f, 89.58344014930375f, -1.227639389895207f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.26347425 64.64689044 -152.37343361 {Pose: {Head: [91.64884980319974f, 3.8312577494338522f, -0.03477675514545786f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.57045072 65.61769755 -151.51049534 {Pose: {Head: [-145.4440224168817f, -0.7626586341765581f, 8.774916185940715f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.78026145 65.55696850 -150.65638662 {Pose: {Head: [-86.83132469138879f, -0.040204886579878224f, 0.534106199780049f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.92480383 64.69104151 -152.27968589 {Pose: {Head: [91.52576804777262f, 0.7908601326506329f, -2.983237125458018f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.35882812 66.09623298 -151.14021154 {Pose: {Head: [-167.92196864456616f, 0.0035400373907940917f, 0.0004419396764668945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.62910250 64.10937329 -152.40075784 {Pose: {Head: [89.99999999136716f, 84.38132735753246f, 0.000005980172910200771f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.44781882 65.01208697 -151.19011932 {Pose: {Head: [-90.02717635134522f, -4.003556250279879f, 0.24065048225065627f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.70580796 65.52007954 -150.69312536 {Pose: {Head: [-87.057038591726f, 5.453369390825956f, 0.9085759028769784f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.02378254 64.67235557 -152.33267466 {Pose: {Head: [91.68627904190613f, 2.790848755427436f, -2.9389154757650213f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.35513626 64.68709997 -152.28103203 {Pose: {Head: [92.16850572217645f, -0.4516088785515376f, 8.737182891805057f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.25158595 64.62409563 -152.55544304 {Pose: {Head: [88.62528307630002f, 18.346316284336257f, 1.4890310868375003f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.17734311 65.78884731 -151.17801471 {Pose: {Head: [-122.68048596433574f, 1.6904991838777317f, -0.3828316495521571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.16434570 65.88192324 -151.12493670 {Pose: {Head: [-122.48373654430112f, 2.692330986959528f, -0.8685602352428178f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 911.70069646 66.08356050 -152.21759152 {Pose: {Head: [179.5269535367684f, 0.003520105397196951f, 36.03165894868748f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.03241672 65.11165743 -151.41581161 {Pose: {Head: [90.12096884017154f, 95.56656786977085f, -0.13908458649070904f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.68167053 64.67935926 -151.76379422 {Pose: {Head: [91.3619992503138f, -100.89029701150898f, -0.23890026651322446f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 911.42447047 66.41463981 -151.22358984 {Pose: {Head: [178.49578453477514f, 0.028720771766518587f, 4.87451274294614f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.72902660 65.71926276 -151.45147087 {Pose: {Head: [-135.44165697578464f, -9.95406251524761f, -6.138376546024831f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.78196853 65.60171385 -150.66354077 {Pose: {Head: [-86.4252263372987f, -0.5295773475300066f, 0.11118316126257649f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.97934510 64.60627926 -152.32736883 {Pose: {Head: [88.9002704965984f, 15.00436939030541f, 2.8840212167614903f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.22293015 65.53499654 -150.67178142 {Pose: {Head: [-91.48379196141488f, -0.027989396225909215f, 0.9031749368328428f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.35693635 65.68982083 -151.11295337 {Pose: {Head: [-109.78989427956117f, 11.921381514023963f, -14.427197302702448f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.66440269 65.51553526 -150.67287176 {Pose: {Head: [-90.7013750600929f, 0.6187716365464456f, 0.9530357181154103f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.28508108 65.01166916 -151.20973450 {Pose: {Head: [-90.0626911692796f, 6.645396696338699f, -0.06913222565972978f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 906.02579247 64.14982458 -153.07283272 {Pose: {Head: [89.706643430485f, -3.777035912192055f, -12.437253747676431f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.89110484 64.41853337 -151.97038987 {Pose: {Head: [-108.71792365856571f, -73.15982435025427f, 63.214895003741404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.79423742 65.59043804 -151.71670306 {Pose: {Head: [179.67914724695368f, 0.019687111109292756f, -45.96075805586128f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.22375757 64.43405732 -152.82559441 {Pose: {Head: [-76.66796511610838f, -153.07918113542888f, 43.646544182311246f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.98487334 64.63601727 -152.55805410 {Pose: {Head: [90.63054943793003f, 30.743747300848238f, -0.26461923033412793f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.39752680 64.64265421 -152.37947175 {Pose: {Head: [90.67298805265553f, -10.679767809845806f, 0.45330245058328833f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.27258633 65.01064627 -151.33241469 {Pose: {Head: [-90.04260382210477f, -7.9510174971036f, -0.2885327240652299f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.92574614 66.30304296 -151.21646871 {Pose: {Head: [179.72340493704795f, 0.009007897429414057f, -20.75484214647628f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.81450395 64.42521084 -152.16857663 {Pose: {Head: [-108.06405998756388f, -79.57905562480443f, 50.21152331326944f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.49600738 64.68597651 -152.61711628 {Pose: {Head: [94.14830831023878f, 16.845225888313628f, -0.6413050493219997f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.68677378 64.09636381 -152.12480649 {Pose: {Head: [25.30641228414976f, -3.1655950027075517f, 6.9694291326457165f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.44730813 64.70972579 -152.33340060 {Pose: {Head: [93.75714265405871f, 1.3812838176218558f, -0.6511218934700372f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.80777471 64.50608570 -152.82696359 {Pose: {Head: [-89.59204115721309f, -175.81217299143344f, 0.3842254680123082f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.30927024 65.12145703 -152.04485830 {Pose: {Head: [-153.7878691533282f, 0.1370931048411832f, 1.0650018072938563f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.15757158 64.69928668 -152.55425356 {Pose: {Head: [94.48718889841065f, -5.120408890260844f, -2.051586682152716f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.52740933 64.81724935 -152.34182965 {Pose: {Head: [101.51187359738526f, -18.38624447910765f, 7.28633479562185f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.76988769 64.11684892 -153.03268486 {Pose: {Head: [90.93300997365971f, -26.84380126153703f, 0.10087645151923488f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.42989800 64.15222778 -152.84015134 {Pose: {Head: [93.01342956282272f, -7.840070096040852f, 0.7266563916771368f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.15411281 64.75819772 -152.59167094 {Pose: {Head: [99.17494406820526f, 65.39895242187339f, -34.15968182223956f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.44052939 65.01038493 -151.18254830 {Pose: {Head: [-90.02149577050065f, 4.050766240051621f, -0.5328709085046847f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.07934592 64.12677636 -152.83139926 {Pose: {Head: [89.84827437728931f, 7.979022203939546f, 1.3638377165143925f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.65290060 64.13975557 -152.61642146 {Pose: {Head: [88.53963694152021f, 70.91960115258804f, 0.00045545362410884087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.42066221 64.47742064 -151.93899280 {Pose: {Head: [-89.84524405369297f, 29.174797776344338f, -39.98584456405113f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.94678466 65.06847968 -152.21523978 {Pose: {Head: [-179.94520100008944f, -0.26784036075969114f, -0.0016976569901889199f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.96996467 64.49970327 -152.85351726 {Pose: {Head: [-89.1853231966174f, 149.8340339832517f, 0.02625649432535826f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.60448656 64.74473336 -152.50284680 {Pose: {Head: [93.76599078568186f, 28.461016202463185f, 1.3611727519495431f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.03085627 64.61162105 -151.85245127 {Pose: {Head: [-89.82907290028662f, -2.78258493600107f, -11.655143184888386f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.54495310 64.60346108 -151.88646333 {Pose: {Head: [-93.99115372171141f, 1.1091973812314817f, -0.07403055244062663f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.40787754 64.16857170 -153.16359735 {Pose: {Head: [91.53406547964228f, 12.376011610020235f, -4.455260834069435f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.99915966 64.71161796 -152.41182914 {Pose: {Head: [94.59080894661481f, 0.30338102210452017f, -1.6617045473711847f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.24523763 65.03568904 -151.22144321 {Pose: {Head: [-90.17767235375571f, -1.2108015057380432f, -0.9959494010721379f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.64370335 64.13235491 -153.02775869 {Pose: {Head: [89.94498512031687f, 4.773516965936631f, -0.7672639656893555f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.80379842 65.69461146 -151.21494739 {Pose: {Head: [179.98258389326452f, 0.005148192712482891f, 49.38676044444513f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.90729578 64.15164807 -152.88725842 {Pose: {Head: [90.2509986584375f, -4.894662870045536f, -11.885126958930853f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.76721277 65.51171709 -150.77609834 {Pose: {Head: [-90.00000080115669f, -13.680003078291138f, 0.000027471272784641516f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.69971888 65.01279617 -151.28355036 {Pose: {Head: [-90.63620829398047f, 4.8086811833375664f, -0.7080720790314802f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 907.22850561 65.14102948 -151.81501004 {Pose: {Head: [-86.53664370692547f, -97.0751157621983f, -6.857263900766944f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.82150145 64.69586705 -152.40848634 {Pose: {Head: [93.77126477517398f, 6.130686099799175f, -1.632272535271535f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.29563487 64.27320463 -152.82381502 {Pose: {Head: [99.45638030033942f, -11.381116196941777f, 0.22624906976730183f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.94694704 64.78629287 -152.29611700 {Pose: {Head: [99.32509531802555f, 0.029072392343431695f, -3.411092540206646f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.09880808 64.78165091 -151.95801842 {Pose: {Head: [-131.7947122699255f, -48.125173195451325f, 55.83567254109778f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.68992669 64.57226055 -151.96657304 {Pose: {Head: [-92.19367223857051f, -16.108172503713394f, -5.948308856943879f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.94136519 64.16504278 -152.64869550 {Pose: {Head: [88.57604988942359f, 85.83701813094807f, -0.7840916004844934f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.09756662 64.13632075 -153.06065433 {Pose: {Head: [92.4092199340843f, -12.676554003442183f, 0.175089174966721f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.98496346 65.00927277 -151.39405429 {Pose: {Head: [-89.88542899229542f, -41.174639494057786f, 0.14178932924397156f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.31690685 65.06266370 -151.21887349 {Pose: {Head: [-90.05949414538009f, -0.22125315839610987f, -0.9903900653332679f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.71555219 65.08003081 -151.95198221 {Pose: {Head: [-140.3992994833259f, -0.0023348744947550514f, -0.5023987402941849f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.48035857 64.21153703 -153.07427245 {Pose: {Head: [92.4615281179129f, 13.88874773606216f, -4.910288408809472f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 903.32848250 66.42988916 -152.22566966 {Pose: {Head: [178.11154709282377f, 0.01965576500670688f, 8.460962559916467f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.41034944 65.06345010 -152.05100500 {Pose: {Head: [-146.47262435904634f, -1.0424567943090326f, 1.0751671143403905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.78955643 64.63610855 -152.31543196 {Pose: {Head: [90.05272235663597f, -2.9173100461141033f, -0.17408006708888174f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.32192502 65.51171725 -150.75996973 {Pose: {Head: [-90.00000310544661f, 3.1812951972935912f, -0.0000114969785914777f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.79623564 64.60871556 -152.34288473 {Pose: {Head: [90.00039970163259f, 5.540539305568208f, -0.08753648228681762f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.18969553 64.75308013 -151.37562876 {Pose: {Head: [5.464303717311919f, 3.9034811597011227f, -45.55621922667887f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.63317980 64.67288153 -152.48690495 {Pose: {Head: [90.98925168214632f, -19.859223415090725f, 0.9669763220534155f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.76170110 65.56852024 -151.74238937 {Pose: {Head: [-179.93908338608887f, 0.0780358032734372f, -0.009342181061630291f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 903.47503237 66.33857664 -151.72493096 {Pose: {Head: [178.2397557799021f, 0.13576330653927315f, -5.441564835744594f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.48690449 65.06343751 -152.02677735 {Pose: {Head: [-146.96707902791752f, 0.21557297290721025f, -0.7450761631003324f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.51630105 65.51095267 -150.67871655 {Pose: {Head: [-89.94474456256023f, 2.850248941037262f, -0.09584088511778638f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.97889030 65.06667916 -152.22608027 {Pose: {Head: [-179.95268711357f, 0.7497062790854625f, 0.021013855263544847f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.17726834 64.84521737 -151.95741741 {Pose: {Head: [-89.94686241790481f, 102.81903877017474f, -30.568974723597705f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.08162732 65.01136704 -151.21255567 {Pose: {Head: [-89.99830542880372f, 6.123438762266358f, 0.053151393018069384f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.73262062 65.51248022 -150.70235482 {Pose: {Head: [-90.1057579783883f, -1.680839285056548f, 0.09498038199046133f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.52275969 65.60383603 -151.85058551 {Pose: {Head: [-177.27248677484866f, 12.817212221723604f, 0.1300627921710509f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.28339045 64.96169009 -151.67321388 {Pose: {Head: [135.39801322091313f, 156.5677241999237f, -17.4818254410711f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.78146376 65.01155489 -151.33900402 {Pose: {Head: [-90.02633995464639f, -0.028347317225145885f, 0.0126435094337357f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.95068178 64.71353741 -152.13967360 {Pose: {Head: [-119.37705856975025f, -33.41774201812252f, 21.709122070023042f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.96229493 66.34308686 -151.71931525 {Pose: {Head: [179.02743970674075f, -0.7145761456620537f, 5.975004149056004f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.76083651 65.56976413 -151.71456789 {Pose: {Head: [-179.89378946731847f, 0.07097569174204023f, 0.32875907614771094f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.15409440 64.61093891 -152.16851573 {Pose: {Head: [90.35755100173286f, -59.260969854197185f, -0.06414327844236076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.18212322 65.61934064 -151.62055163 {Pose: {Head: [-158.20755578957653f, 10.562881547209692f, 0.019169691514474306f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.62646456 65.56863711 -151.76966520 {Pose: {Head: [-179.9201146684059f, 0.0823317818410063f, 0.0062761046583384465f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.37246564 65.53734249 -150.68994433 {Pose: {Head: [-89.89781024036625f, 5.14267902862387f, -0.20908103812769518f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.59257792 64.70748591 -152.28151535 {Pose: {Head: [92.9725566546786f, 0.00747836564890247f, -4.1152434709529295f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.41348499 64.81394258 -152.15171101 {Pose: {Head: [-125.89337426925488f, 0.06786935695434781f, -0.04227642320597087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.61841996 64.63771856 -152.45818670 {Pose: {Head: [90.24950032145496f, 2.3985225123048495f, 0.184171748709107f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.06133246 65.56843585 -151.71430893 {Pose: {Head: [-179.8717690019123f, 0.34680107696507706f, -0.09379753946979412f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.52369077 65.06006769 -151.99770985 {Pose: {Head: [-147.03642942807244f, -0.24957257562131496f, -0.06004779375246807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.14958423 64.85453824 -151.99809493 {Pose: {Head: [-90.76884533141738f, 100.33589264942489f, -30.21625186392664f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.63165545 65.56965311 -151.79463494 {Pose: {Head: [-179.58803947415015f, 0.10154914596895125f, 0.06912996200860701f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.47837555 64.63837504 -152.36403116 {Pose: {Head: [89.81293571248975f, -4.298697145342585f, -9.512372800537674f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.61938434 65.06825633 -152.03296408 {Pose: {Head: [-144.32304323886595f, -13.042050144902113f, 18.334299630579732f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.91344964 65.94008484 -152.21820730 {Pose: {Head: [179.41603465292766f, 0.4539133606254814f, -9.508610405901084f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 903.66864706 65.89863562 -151.21392407 {Pose: {Head: [179.15747292250003f, 2.0378823654890286f, 0.17689130979802908f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.95372841 65.53917323 -150.73261874 {Pose: {Head: [-90.46356969969901f, 5.263309861044846f, 4.887150700301371f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



