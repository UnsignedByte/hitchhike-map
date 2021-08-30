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

summon armor_stand 0.21694537 64.59042382 -0.25411526 {Pose: {Head: [-179.15714759472348f, -0.6903128417768761f, 0.25181800444648117f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.49257972 65.90685635 1.78276772 {Pose: {Head: [-133.36850447253644f, -16.58139205343921f, 16.238040165001248f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.32604554 64.61554076 0.35526568 {Pose: {Head: [-137.9389307109325f, 0.6945713510168979f, -0.5036521263628111f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.90859811 64.05270390 0.03956442 {Pose: {Head: [62.90207649600088f, 16.65667436354701f, -11.250531154984266f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.32656488 64.51858254 0.70723207 {Pose: {Head: [33.701394954595514f, 5.581827177858531f, -59.121404125180185f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.37566299 65.04089945 0.82604440 {Pose: {Head: [-136.6153384687483f, -0.6236085666540269f, 0.996391605989338f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.57996090 66.50860341 2.24063155 {Pose: {Head: [-139.09094576264445f, 16.380687923095376f, -16.575456094790475f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.81133356 64.82166627 0.75622722 {Pose: {Head: [88.8312508080808f, 87.64598724012679f, -47.38983180652143f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.75915938 65.88860628 1.64522176 {Pose: {Head: [-138.07759094138217f, -2.7971914253591774f, 2.3768531354942644f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.22710700 65.18963119 1.01282316 {Pose: {Head: [-136.76006408227042f, 10.677057221638838f, -12.576992620011387f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.45486905 65.56889240 1.63399043 {Pose: {Head: [69.14203906759462f, -60.141610706232754f, 41.51168299009718f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.12572797 64.08399914 0.46224349 {Pose: {Head: [50.30935263831653f, -34.81654772985432f, 31.410820714667917f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.82630686 64.55477683 0.39893675 {Pose: {Head: [-134.3632591428377f, -2.100593876907275f, 0.5118787195862629f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.80988195 65.69377264 1.37417155 {Pose: {Head: [-142.49682517352414f, -6.280480204529844f, 5.410974621127695f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.19805906 65.39511938 0.84930702 {Pose: {Head: [-154.34581621886102f, 14.502177341220932f, -20.56230465600497f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.82108937 65.53717643 1.25477803 {Pose: {Head: [-141.72724814643325f, -14.317551652448383f, 15.526351564157807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.04658100 66.15663541 1.85823804 {Pose: {Head: [-141.70496185397883f, -14.83081960441606f, 14.068199137856725f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.19424922 65.89400641 1.75276073 {Pose: {Head: [-133.20995007619032f, 19.123580221607423f, -23.921394437596767f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.68551229 66.82584501 2.65163464 {Pose: {Head: [-133.0706009521759f, -14.972390078978473f, 14.839320981655208f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.92433233 64.57740079 -0.26774525 {Pose: {Head: [179.92658836077732f, 1.8905016108237442f, -2.070949066852055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.06124866 63.78985994 0.28082078 {Pose: {Head: [42.41090413606914f, 12.577181130615736f, -18.06510535978538f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.25544446 66.49757964 2.31940289 {Pose: {Head: [-134.8515923651785f, 5.351074575676788f, -5.990915514706029f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.69613207 65.06361778 0.84196229 {Pose: {Head: [-137.10935600026775f, 5.243936386790977f, -4.334342118868307f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.57659602 63.41522946 0.00439021 {Pose: {Head: [44.0749785960623f, -7.2477951004955985f, 5.9729588377638665f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.65160195 64.47067117 1.01243531 {Pose: {Head: [45.27801631467257f, 11.8061061411373f, -11.71586150403775f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.79922033 64.59652284 1.19535357 {Pose: {Head: [37.81584644619529f, 4.924541520286762f, -7.726573701841966f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.37565418 63.90004305 0.26318012 {Pose: {Head: [48.904218751991166f, 22.57866051324923f, -25.840350980600125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.25041792 66.52434053 2.30962150 {Pose: {Head: [-135.04195403491858f, 5.024488859520019f, -5.941140863369823f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.23676944 65.23661645 1.04568480 {Pose: {Head: [-129.91781036911692f, 1.6935239885153581f, 2.4922696597976706f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.04952603 65.24150039 1.07033466 {Pose: {Head: [-134.8408240427989f, 1.6220325067033685f, -1.7596147731532144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.78198354 66.20012136 1.94774012 {Pose: {Head: [-139.6818503938571f, -14.809898430179228f, 16.957064826170633f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.79659849 64.59761461 -0.26534238 {Pose: {Head: [178.76662461711933f, 2.4424852325734725f, 0.2676095093108636f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.58569542 66.04440004 1.68625826 {Pose: {Head: [-143.09529965711963f, -10.615157737052618f, 8.105839179636668f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.27817249 63.39046680 -0.00819245 {Pose: {Head: [43.32970351562116f, 0.32695113988525354f, 1.3714588802044436f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.67334740 64.94122403 0.67140095 {Pose: {Head: [-139.83980372936767f, 1.4347445155380154f, -1.5808440061629132f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.78062067 64.57811783 -0.27616456 {Pose: {Head: [178.72072648486466f, 0.2922146347747628f, -0.15154196201103898f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.73555785 64.90610075 0.78408563 {Pose: {Head: [-128.4177031189073f, 33.754817233578294f, -30.62686271105801f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.22914565 65.13639744 0.58150403 {Pose: {Head: [-150.25020881385444f, 3.2162586596366682f, 1.3174902669942177f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.08496080 64.87193511 0.66812052 {Pose: {Head: [-137.42660892558033f, -1.8984300232865914f, -0.2776177075988364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.26342803 65.33691596 1.31564902 {Pose: {Head: [-129.48756743187724f, 35.85924314666677f, -32.73783599923566f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.14685782 65.77287494 1.55982242 {Pose: {Head: [-137.8122942490631f, -14.514583766214221f, 14.559661664784674f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.16839569 64.54720827 0.34418095 {Pose: {Head: [-137.65039842833943f, -0.4649810441079448f, 0.5408555888265995f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.36944862 65.18040760 0.80932551 {Pose: {Head: [-152.24558182560577f, -4.741219130420326f, -50.13374461204292f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.51504949 63.88078805 0.32517611 {Pose: {Head: [44.20284446270898f, 16.37637317512461f, -16.84288140207883f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 3.29210776 64.43162917 0.24940592 {Pose: {Head: [-83.82156112996873f, -106.16798371895717f, 24.983382191718917f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.21540661 64.60967157 -0.20907068 {Pose: {Head: [-176.44454484817908f, -1.1401000812015554f, 0.19172460357788207f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.18136623 65.18291226 1.27901249 {Pose: {Head: [-122.59297514681592f, 47.81922718996518f, -40.08775600551525f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.64973423 64.28808610 0.13347362 {Pose: {Head: [89.54040585527787f, 88.4732342766951f, -51.62198328018728f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.78724368 63.45288287 -0.01023362 {Pose: {Head: [44.70874362686976f, 1.86711764849584f, -0.5709400282036898f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.77863968 64.67362528 -0.26693052 {Pose: {Head: [179.50501885940568f, 0.8080554363930179f, 6.494587727249044f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.63610344 66.38075508 2.18652841 {Pose: {Head: [-136.5020269514019f, -15.029598668564645f, 22.827529992717334f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.22544496 64.57229073 -0.28314473 {Pose: {Head: [178.50363965472022f, 0.9146760460438159f, -0.9289164363564206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.29649299 66.31433874 2.10788307 {Pose: {Head: [-136.29855779268226f, -21.786627759222323f, 22.661417999153965f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.22193205 64.72799785 0.53139085 {Pose: {Head: [-135.5262728247387f, -2.3502775440346073f, -0.8025192750205492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.89133734 65.97122446 1.54872275 {Pose: {Head: [-141.59404894175688f, -3.729076098706346f, 8.641420661561042f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.51889083 66.90990710 2.75765884 {Pose: {Head: [-133.70532302078814f, -12.455531534004617f, 12.22990024006062f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.77541139 64.92220478 0.70981644 {Pose: {Head: [-134.3128987640077f, 1.062902647227535f, -0.12100109836379344f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.59686336 64.87086467 0.46594541 {Pose: {Head: [-145.462417499837f, 0.5716021442442238f, 1.3399009146752825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.76814412 65.08647227 0.85496038 {Pose: {Head: [-133.33444457853105f, 1.0392783795450777f, -0.5542341108301962f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.99953373 66.68195209 2.59990039 {Pose: {Head: [-130.95697797069275f, -21.879458997998302f, 20.518654109401147f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.08906298 65.36296948 1.24186489 {Pose: {Head: [-134.16191236812261f, -27.421238843700607f, 31.07487368270247f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.30955933 64.39590032 0.59270045 {Pose: {Head: [-118.62624985638868f, -52.09976069007468f, 38.73475475947037f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.21307790 64.55613404 0.33662353 {Pose: {Head: [-137.6130188172788f, -0.6258144978435957f, 1.213358516259578f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.51981361 65.36494107 1.17551459 {Pose: {Head: [-136.52977761894618f, -7.432345074494032f, 8.83175359447475f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.82288345 64.75260567 0.37649608 {Pose: {Head: [-144.11734134621003f, 2.2206737003232515f, -3.141224301817923f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.10740860 64.93713521 0.75825984 {Pose: {Head: [-134.7657421225241f, 1.6984457307634078f, -1.6797630269521742f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 3.05308972 64.94977695 0.05966556 {Pose: {Head: [-58.62793304541949f, -152.94981989277682f, -45.17179031407383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.19539394 63.51097607 0.03462585 {Pose: {Head: [40.27827186950768f, 1.5698028310428176f, 2.4329037782898157f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.85209952 66.67229366 2.37075948 {Pose: {Head: [-140.7206413140344f, -2.659189460296713f, 4.830999812683766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.30782743 65.39547245 0.79881505 {Pose: {Head: [-156.53868523136364f, 9.861436702313016f, -11.888111923366164f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.23382653 65.27423075 0.99992416 {Pose: {Head: [-131.06398398684794f, 2.745103873870139f, 2.8308781251260773f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.16875970 63.70893376 0.08316789 {Pose: {Head: [-85.07171136596148f, 94.2531945976222f, -63.72782447939004f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.35184445 64.93078703 0.69258387 {Pose: {Head: [-136.3532867529358f, -7.517248207238938f, 7.262405299210657f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.22756733 65.15043904 0.98618510 {Pose: {Head: [-128.9290958401736f, 1.2860499424083847f, 1.56124397195355f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.64705505 65.99198269 1.72231768 {Pose: {Head: [-137.75662718554295f, -19.506974189479035f, 17.225795556967654f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.83129427 64.97536401 0.52313406 {Pose: {Head: [-147.37685821420024f, -0.2714251368774127f, 13.15393106459555f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.25424774 65.71050091 1.25951073 {Pose: {Head: [-147.51233100837206f, -9.847796341638032f, 4.845727993506588f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.69791238 65.31162535 0.55823659 {Pose: {Head: [-175.65176580837854f, 95.53767230753901f, -47.882342388535164f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.42899173 66.90871112 2.74591415 {Pose: {Head: [-134.05876859362536f, -10.687262147801356f, 10.541259682989061f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.72987719 64.56771226 0.40473584 {Pose: {Head: [-133.78531543886655f, 1.9344565826214442f, -1.7200648815348638f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.78581169 65.56282419 0.99870696 {Pose: {Head: [-153.10041994619075f, 14.202681335781493f, -8.221974018259885f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.53181997 66.10733733 1.80176129 {Pose: {Head: [-142.0947006552146f, -16.632868952556276f, 15.639389579079038f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.35924597 65.27057380 0.77815130 {Pose: {Head: [-146.63409502689606f, 20.16351974689714f, -12.43252323137991f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.28179700 65.26254965 1.01996626 {Pose: {Head: [-131.4879704588814f, 5.0417508783611105f, 1.649985938403764f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.33602506 64.92564556 0.67842593 {Pose: {Head: [-135.78765560987054f, 0.6673968482262155f, -0.5004413487282156f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.91058676 65.59825061 1.25602819 {Pose: {Head: [-143.63877971481926f, 1.220504060397299f, -2.191314567872312f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.32093780 64.36096236 0.59720965 {Pose: {Head: [-114.54227240280676f, 66.00440671582619f, -55.659601794070845f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.26380413 66.14781058 1.77841678 {Pose: {Head: [-138.97727858527765f, -24.358500378890522f, 10.416958090605267f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.23737326 64.51947546 0.59533779 {Pose: {Head: [-124.5783802641675f, 61.11878065209456f, -51.959668301478466f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.68243594 65.49303507 0.96633804 {Pose: {Head: [-151.40856949315315f, 19.54210426528241f, -18.10525745003072f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.57973880 64.98274271 0.49052880 {Pose: {Head: [-149.9173438151935f, 2.060752084734845f, 7.431860679557892f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.23639482 64.61584506 0.32695040 {Pose: {Head: [-140.215656702911f, -0.5750620186946546f, 1.3070549172971055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.14608493 65.92208844 1.82711515 {Pose: {Head: [-131.95542758265304f, -45.0100500338755f, 33.59215512004499f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.08292602 65.40974196 0.98715783 {Pose: {Head: [-146.937727832664f, 9.40939078833005f, -8.355027400634677f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.28126393 64.89554783 0.68160076 {Pose: {Head: [-136.02278313919888f, 2.361222109284126f, -1.88805322745295f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.97229398 65.55538071 1.00847062 {Pose: {Head: [-149.58648713887686f, 26.134418064202354f, -9.249169886968508f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.90863816 65.03689154 0.45323224 {Pose: {Head: [-152.32537140676692f, 5.454863154656249f, 0.6834450962016692f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.39136504 64.97134886 0.55445960 {Pose: {Head: [-137.4548765860468f, -19.665734356893836f, 16.26664261054683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.32193528 64.63697214 0.32289173 {Pose: {Head: [-140.0673614186985f, -0.7676891568644371f, 0.6813963322336517f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.76033087 66.53347299 2.25200559 {Pose: {Head: [-139.13990994224815f, -2.667452312822091f, 9.787793673668496f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.53630234 64.56375375 0.37557123 {Pose: {Head: [-136.33217928556192f, -1.335917721012808f, 2.9727630099500444f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.18043601 63.65694235 0.24920899 {Pose: {Head: [1.7401153859461607f, 0.5742067769241777f, 8.642659739516626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.82591476 65.44060897 1.08569023 {Pose: {Head: [-143.08020789335194f, 7.059859656904113f, -7.535862599184309f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.98138283 65.71135949 1.48133409 {Pose: {Head: [-136.75815776051405f, 23.82076432704527f, -33.90970372831645f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.75444662 65.93712280 1.53015981 {Pose: {Head: [-142.70710266540323f, 0.740726192252225f, -2.5180973521841254f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.78520598 64.77225258 0.23377200 {Pose: {Head: [-149.51937480675383f, 0.9597924719217055f, 0.3773511677368266f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.66097160 63.43303884 0.00941247 {Pose: {Head: [40.544384444263514f, -2.7290130796541163f, -0.8249456437791699f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.63760655 64.32815680 0.59194693 {Pose: {Head: [-98.28832046587205f, -98.91355032414953f, 77.53259089377369f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.56388985 63.43659726 -0.00894275 {Pose: {Head: [43.746685617933196f, 2.582544684437816f, -1.709859870770667f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.42079038 65.06633811 0.96758675 {Pose: {Head: [-132.62134411591742f, 16.75378366415893f, -18.43859066622043f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.52540152 67.02161358 2.79635818 {Pose: {Head: [-135.11549921886646f, -4.464581410578096f, 4.596994045535947f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.79823629 65.06819038 0.98074605 {Pose: {Head: [-115.8088385476027f, -15.562887097986756f, 6.689012910315212f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.34053948 64.97897506 0.44481708 {Pose: {Head: [-150.22964529335883f, -3.7113685326164667f, 11.310228600901219f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.37811896 66.00993477 1.65460865 {Pose: {Head: [-140.57523371568723f, -6.3028729739185465f, 3.995610162465571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.44274936 65.03587216 0.89810008 {Pose: {Head: [-133.02783609135415f, 17.34462673657154f, -19.012511687279307f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.64055500 66.77041740 2.58952496 {Pose: {Head: [-134.78201005002052f, 6.145076918324674f, -6.138925557244149f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.66093837 66.45209314 2.35188086 {Pose: {Head: [-131.65613449265845f, -19.98929468469961f, 18.900692008403375f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.25867928 65.58846718 1.29743157 {Pose: {Head: [-133.07295937951733f, -10.144949922960349f, -4.005940311952988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.74128423 65.70966789 1.23720449 {Pose: {Head: [-147.8780867052633f, 6.254503418613197f, -4.7736923924453265f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.58861228 64.37986058 0.18977003 {Pose: {Head: [61.04255768124771f, -64.15361064152253f, 52.17100565313753f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.20608452 64.33344883 0.54298526 {Pose: {Head: [-117.89706901735003f, -55.17798179580878f, 41.121040878780356f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.36886121 65.39579794 0.64780181 {Pose: {Head: [-154.37139774080865f, 0.9891845368803998f, 6.245071546582767f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.86319651 64.78403531 0.53048886 {Pose: {Head: [-132.88355669315777f, 24.81278043747345f, -27.924747403779335f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.65711822 64.59422667 0.35501014 {Pose: {Head: [-136.6440943678621f, -2.8432727424983577f, -1.1764746256266483f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.23231983 64.59940951 0.35964119 {Pose: {Head: [-137.86387417437768f, -1.1340373191932376f, 0.6429796719570231f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.38384217 65.70115781 1.53142380 {Pose: {Head: [-134.29403030816243f, -9.044670573340408f, 8.970670104403801f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.29968235 64.90932491 0.53582636 {Pose: {Head: [-145.01983051494153f, -1.6493492304169426f, -0.5458275879144878f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.59063771 64.67421026 0.30359761 {Pose: {Head: [-141.38480461357273f, -5.129222878872925f, 7.008253798884605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.71618245 65.44414952 0.66990483 {Pose: {Head: [-154.68900888722678f, -3.4377655823856763f, 18.19022868272461f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.74630888 64.77038541 0.70177731 {Pose: {Head: [-140.03901826829272f, -53.99279695791619f, 72.45654113272762f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.74688163 64.71159534 -0.23332566 {Pose: {Head: [-178.71774110211808f, 0.7723089734135392f, -6.725325834661271f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.95170201 65.50042017 1.04724906 {Pose: {Head: [-135.4470075170178f, 39.96896199086135f, -13.552188354968274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.82014095 65.23325171 1.43305241 {Pose: {Head: [-96.9497862621451f, -90.02472896219702f, 43.351069516550545f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.37987164 64.91765312 0.54272139 {Pose: {Head: [-143.07037506098857f, -1.8807982343578884f, 1.2650440372362477f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.00993003 64.79354700 0.27622398 {Pose: {Head: [-147.6569000566154f, 21.30955701030607f, -8.365426058670845f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.80140490 64.84440025 -0.23405209 {Pose: {Head: [-179.74996780865507f, 4.122682679204881f, 0.133665504681062f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.44141243 64.78347132 0.52542972 {Pose: {Head: [-133.42518742089308f, -21.883164489604084f, 22.590364335635222f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.21790072 65.39959584 0.85213676 {Pose: {Head: [-155.6884181260981f, 14.7578893819611f, -20.07929774865905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 3.05408894 65.86984632 1.99793562 {Pose: {Head: [117.173963108521f, 124.98392908742332f, -44.89732609370982f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.91070327 65.43992918 1.28530473 {Pose: {Head: [-127.77680673965324f, -41.35977395279288f, 23.371754340434638f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.90688340 65.35330256 1.32548609 {Pose: {Head: [-120.85465961778787f, -55.636295856432476f, 31.62476184239482f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.59706596 64.54924787 0.34796772 {Pose: {Head: [-136.91931438652884f, 0.054593298291112285f, -4.822689024881996f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.80397922 65.56962733 1.09795403 {Pose: {Head: [-149.73269325628598f, 3.853070695546604f, -0.6040891389393732f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.77446011 64.47421067 0.60207558 {Pose: {Head: [-81.30737701162178f, -93.15475656079037f, 66.07430797028816f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.62569117 65.28736314 0.69833914 {Pose: {Head: [-155.5152677711171f, 13.9825793339658f, -15.113998661683251f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.19335819 64.66776744 0.31637821 {Pose: {Head: [-140.67686459137434f, 2.1753804053071364f, -0.1155075438618802f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.36793066 65.38546235 0.77086272 {Pose: {Head: [-157.0252172906495f, 10.654079245715431f, -12.317826240379695f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.33241552 64.64010855 0.33629820 {Pose: {Head: [-139.30358334792246f, -1.5615366512736617f, 4.498343791398866f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.46403562 65.71813028 1.39716352 {Pose: {Head: [-142.90394635898107f, -16.50682710915296f, 17.9653301965191f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.41873346 65.08696879 0.52493148 {Pose: {Head: [-148.06667313670104f, -1.451222583934368f, 14.642100380707667f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.27339495 65.08019903 0.86377032 {Pose: {Head: [-138.39506855286345f, -28.06930668640952f, 48.903642819992776f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.34510462 64.57325349 0.30621281 {Pose: {Head: [-138.84115689254904f, 0.09134600293936895f, 2.8822559028139523f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.62244137 67.37806795 2.90793854 {Pose: {Head: [-150.79298879437223f, -3.6545506121885185f, 3.62541838219258f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.44071993 65.35239236 0.75005104 {Pose: {Head: [-156.31343402325217f, 12.434541495553898f, -14.240243537836356f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand -0.00091885 65.10478882 0.06778395 {Pose: {Head: [-171.88060145290373f, -38.5418645896812f, -6.423637099733439f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.86266863 64.01320644 0.01727637 {Pose: {Head: [66.5290376691975f, 17.23220366938439f, -8.338375403530206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.41888652 64.29793144 0.72322261 {Pose: {Head: [27.9009850512724f, 2.403070852592542f, 0.9025003933631662f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.36686903 65.33931479 0.49339453 {Pose: {Head: [-167.08749390603683f, -20.564305116759396f, 12.30298434171863f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.46292066 65.88329519 2.25961213 {Pose: {Head: [53.25004817056803f, 16.56149890662787f, -12.111165627161839f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.36525994 65.54628770 1.09645489 {Pose: {Head: [-165.4552870752159f, -67.77344027832036f, -56.22931976596233f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand -0.25416025 64.48776442 0.27680720 {Pose: {Head: [0f, 0.022449573824346772f, 90f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.96718734 66.25051371 1.96291252 {Pose: {Head: [-135.80093692627776f, -23.042164685875957f, 19.85435393119293f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.54536625 64.64134657 0.24779098 {Pose: {Head: [-144.26110819742527f, 0.3643286807971193f, 0.8792005514365303f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.74826434 65.51534763 0.73651956 {Pose: {Head: [-166.53825691492824f, -6.719588196298861f, -24.580414204297302f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.23880419 64.78220620 0.94997859 {Pose: {Head: [-124.38802094135002f, -45.85188298207817f, 61.83827977524973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.14889500 66.21825997 1.95195700 {Pose: {Head: [-136.59796132320474f, -24.17618825847812f, 20.705122211314954f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.56381697 63.63625269 0.27320731 {Pose: {Head: [1.5857850810783412f, 2.1529453046127682f, -16.435160308526402f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.88016600 65.04927993 0.30812297 {Pose: {Head: [-152.33310118686117f, 1.295024442396625f, 7.753045902236014f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.21507074 63.60587031 0.26865939 {Pose: {Head: [2.656476868830794f, 3.381191650251041f, 4.080321340015311f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.46734337 65.29462371 0.73625916 {Pose: {Head: [-149.47047204296055f, 12.249094242882297f, -17.411335643672892f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.91792388 65.06290761 0.43024283 {Pose: {Head: [-152.90770556646316f, -2.4586095818609683f, 12.177051571218017f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.66428706 66.07286717 1.64724769 {Pose: {Head: [-141.72813627159783f, -2.4128878119206214f, 8.138343746799933f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.66439294 65.22258775 0.50949436 {Pose: {Head: [-168.15696555856502f, -20.880405000767247f, 29.445316448500826f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.09381688 66.46980540 2.18394645 {Pose: {Head: [-138.56002111493763f, -11.593114752471138f, 16.73528380709292f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.50155284 66.84487500 2.47494848 {Pose: {Head: [-144.98311445437946f, -4.5293352413534915f, 4.584893203326607f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.08386678 63.61875364 0.27958659 {Pose: {Head: [4.099246472515835f, -5.352347575067082f, 2.3196206577631906f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.66447642 65.01088116 0.67290936 {Pose: {Head: [-120.99057255159859f, 0.9658037696539944f, -2.4055652754482084f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.23506904 64.80951904 -0.00768820 {Pose: {Head: [-167.71272218901524f, -4.531091348654147f, 5.720779350445926f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.74707707 65.53473778 0.61197178 {Pose: {Head: [-156.85795579552834f, 5.559406463443519f, 12.223790043458523f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.77121291 65.00744708 0.60423917 {Pose: {Head: [-121.5806449378386f, -4.354711843120344f, 0.8153215207426545f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.58989208 65.54265070 1.00916118 {Pose: {Head: [-150.56113513637123f, -0.37572286000472493f, 17.46195219814402f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.85913715 64.64177044 0.24261570 {Pose: {Head: [-145.2582873241241f, 1.9641633134258576f, 0.41643091347210476f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.63528888 65.04423979 0.59837781 {Pose: {Head: [-122.95772910294498f, -3.3759379770876174f, 1.0220027984645979f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.05287971 64.62555644 -0.03522268 {Pose: {Head: [141.22027696069762f, 22.59412227138055f, 66.64582157068764f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.20784474 64.29616719 0.65551143 {Pose: {Head: [24.07244044660269f, 2.2086838197149694f, 9.500615758069548f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.40743652 65.58746878 1.02212934 {Pose: {Head: [-151.70428133838578f, 4.06486149039598f, 7.11856087549115f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.07915741 65.11033549 0.28955607 {Pose: {Head: [-155.89131261961458f, -1.1003674595823094f, 15.419497465679646f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.57625852 65.28387346 1.09314203 {Pose: {Head: [-117.53254685012735f, 77.72218491203063f, -40.687119823340524f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.60946076 65.22203880 0.71298279 {Pose: {Head: [-162.0406730549181f, 3.7622889283856007f, -55.42789245343948f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.20823813 66.12126083 1.84771776 {Pose: {Head: [-139.19394342731422f, -0.6393604235612294f, 2.391774767380406f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.79256286 63.95523497 -0.01339351 {Pose: {Head: [65.8045021632857f, 10.760504533968508f, -4.933722261552906f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.68107617 64.65833692 0.31528766 {Pose: {Head: [-140.37087200465155f, -1.1491044202417573f, 2.0623455933669845f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.24052349 65.60881750 1.03719261 {Pose: {Head: [-150.31879690285692f, -19.296924843656708f, 29.701757760934328f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.77291286 64.89466243 0.51762994 {Pose: {Head: [-142.77004154515305f, -5.133740045934633f, 10.671537197187535f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.72456940 65.47707298 0.74252158 {Pose: {Head: [-148.82150634119645f, -5.0216190170103285f, -25.235790200773074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.31514715 65.76642830 1.20568536 {Pose: {Head: [-137.85069221252712f, 9.94673550351464f, -9.343549045067157f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.64029395 63.64041354 0.29240966 {Pose: {Head: [1.3197594619944832f, -4.206533585097955f, 11.571547836023406f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.71895116 64.73065250 0.16209818 {Pose: {Head: [-152.45996177236512f, 2.0801723369354264f, -4.150135389719296f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.01838622 65.05635908 0.40024517 {Pose: {Head: [-153.31296241522358f, 0.16670978494796002f, 7.012452303503021f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.54412018 64.70935131 0.26498951 {Pose: {Head: [-145.23565931723718f, 11.187613919863363f, -9.042237126672264f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.71927437 63.50955683 0.01967637 {Pose: {Head: [36.59649665603616f, 0.4383909319027256f, 7.087741136078237f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.77710726 64.81208197 0.36442836 {Pose: {Head: [-145.04187268762902f, 3.562886943354645f, 0.5923232393986138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.43005570 64.70957195 0.29550859 {Pose: {Head: [-141.5727819692995f, -2.1721011437183235f, 7.3830675401782395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.95343900 64.81075517 0.51409947 {Pose: {Head: [-139.144175980844f, 44.9665912759443f, -48.35765582578543f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.35609197 65.50752177 1.08161798 {Pose: {Head: [-147.69715189607942f, 3.4802620674283045f, -1.5530966300659352f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.52423803 65.13451795 0.37949706 {Pose: {Head: [-155.7215430559087f, 1.7275843714111245f, 2.6652729468724647f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.83938101 65.06028394 0.63129343 {Pose: {Head: [-122.06834152508186f, -21.739524737404114f, 12.905265784826424f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.87977154 64.63641087 0.42749701 {Pose: {Head: [-135.6975404993586f, -16.247338363812982f, 27.82940023786086f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.65959739 64.55033655 0.72653029 {Pose: {Head: [146.88749800662407f, 170.36058217647687f, -21.563868123811996f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand -0.40122817 64.74162123 0.29316354 {Pose: {Head: [-19.59648992922752f, 121.29024318248855f, 27.229154748256107f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.86364670 65.22022819 1.15683990 {Pose: {Head: [-118.68274102505185f, -57.85334271488951f, 33.683961765716965f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.30429731 65.13706570 0.84345779 {Pose: {Head: [-140.10375515309656f, -25.97691888631382f, 46.96620484672813f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.63292505 64.76961982 -0.04248147 {Pose: {Head: [-166.60033892556345f, 0.3115225018783695f, -2.9551714224901064f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.27888548 65.81631346 1.40936147 {Pose: {Head: [-145.59182631668074f, -7.866803695815646f, 5.781722766568978f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.75492778 64.68844762 0.25376140 {Pose: {Head: [-143.98669854007693f, 1.0905311505310367f, 7.984018846327241f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.23148147 65.93051623 1.64964625 {Pose: {Head: [-140.02833959999856f, 8.164912515351869f, -10.023983498707684f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.83849888 64.87170857 0.37706865 {Pose: {Head: [-144.6410546047379f, 11.770696760784876f, -35.186401069065205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.50627511 65.06823945 0.46128021 {Pose: {Head: [-150.29736782970076f, 5.150547788981026f, 12.632864007267635f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.70474640 64.84226410 0.42375383 {Pose: {Head: [-143.47479040167232f, 8.272540213730212f, -3.255829974739225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.01215235 65.19810297 0.43771286 {Pose: {Head: [-154.26958280370982f, 16.483672512583222f, -10.929039848193552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.91833656 64.68723493 0.26611841 {Pose: {Head: [-142.77459743026276f, 1.2773113516713253f, 9.223766592740825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.29614244 64.48562675 0.36014649 {Pose: {Head: [-135.69194185788265f, 31.02670324815291f, -34.55276479950231f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.83401146 65.14581562 0.37913730 {Pose: {Head: [-155.34961224549235f, 1.7887130834386136f, 5.697046237668604f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.07148867 66.26996776 2.02098651 {Pose: {Head: [-135.6847615838281f, 18.45473607728996f, -18.413429842761623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.48884268 64.82660749 -0.17319229 {Pose: {Head: [-175.88993679560386f, 2.0232182793195532f, -7.577970917420997f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.31339108 65.32964797 0.55790780 {Pose: {Head: [-170.05216445679812f, -13.118502986105174f, 11.175194175346453f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.42838599 66.69389972 2.37277065 {Pose: {Head: [-142.42608278512205f, -10.29367369622159f, 12.554392889623589f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.18228002 64.89817412 0.07253861 {Pose: {Head: [-164.57986036801125f, -5.274485297668472f, 23.20933993831087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.74112202 65.95145716 1.76881693 {Pose: {Head: [-134.27478047755812f, -25.530057222503856f, 28.14365431035458f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.79433506 64.78490193 0.30548154 {Pose: {Head: [-145.83986968658297f, 2.234963610418273f, 1.575138301399161f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.37025124 65.56654235 1.07761464 {Pose: {Head: [-148.90418129086962f, 24.6150005160332f, -27.910759433245328f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.15053489 65.09025770 1.44712343 {Pose: {Head: [47.91453934379399f, -12.120940818891107f, 8.683613086617171f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.14098309 63.70474255 0.29429132 {Pose: {Head: [3.152657305049726f, 2.357048144709377f, 14.223871025346739f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.82295667 64.28869046 0.50341449 {Pose: {Head: [-103.29114861430588f, -72.59045658030422f, 68.16101651051194f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.53774248 65.20888454 -0.04237522 {Pose: {Head: [152.5923358529608f, 4.996368298818662f, 12.900845351958518f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.49351761 65.78619850 1.35242866 {Pose: {Head: [-146.2063333346969f, -9.95828571470375f, 20.04065943359432f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.10126675 63.63374294 0.29364722 {Pose: {Head: [3.5161747034983457f, -4.51935811892624f, 0.8895552517800478f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.16924314 66.72174975 2.56368318 {Pose: {Head: [-128.25241195239158f, -1.7883632075927836f, 2.712162677221818f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.68575818 63.56236281 0.03816305 {Pose: {Head: [33.92100422225103f, 2.7488284187400738f, 4.346893393817249f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.59184093 65.23625397 0.50911025 {Pose: {Head: [-168.09394295593418f, -20.66670982995899f, 29.930009832865487f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.71506229 65.98607756 1.65526883 {Pose: {Head: [-137.24820156589698f, 20.39166969474913f, -27.37103656452732f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.28416667 65.61719194 1.11234229 {Pose: {Head: [-134.9652946376984f, 20.92364725221225f, -20.51559206651683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.62296116 65.21278737 0.77050038 {Pose: {Head: [-133.37231837261902f, -57.820324763097524f, 49.41331164084324f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.11087449 65.02791461 0.34620857 {Pose: {Head: [-151.23683425110104f, 21.291517855628403f, -18.055009319753072f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.03824957 65.88377699 1.44627843 {Pose: {Head: [-142.8337601932905f, -16.55374240370389f, 15.469416248611827f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.44722398 65.25402557 1.10882223 {Pose: {Head: [-121.86258137282452f, -2.7277355999457336f, 34.66866729001144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.28313379 65.64674267 1.19871994 {Pose: {Head: [-147.75433340946668f, 5.289403258103519f, -4.048313030424449f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.75790231 64.63318024 0.51595252 {Pose: {Head: [-107.05565210492061f, -78.4803343014443f, 60.315631553398795f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.25743075 64.78900459 0.22013264 {Pose: {Head: [-147.87650171814857f, 4.306054023321138f, 10.150456173632673f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 3.19562870 64.63169232 0.36590423 {Pose: {Head: [-97.24435000416122f, -78.48209447334524f, 33.02183249065229f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.31997635 64.90796162 0.14225814 {Pose: {Head: [-162.0290293908952f, -7.872806970168632f, 35.676006843204895f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.10949029 63.86876303 0.24969324 {Pose: {Head: [3.937332557056109f, 0.43454749494354183f, 29.370329193346024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.77654283 64.24406898 0.48138161 {Pose: {Head: [26.905582962848488f, -179.51808295714807f, -4.213219122848379f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.78876220 64.91505415 0.27544839 {Pose: {Head: [-150.81273795963887f, -1.8054129967922552f, 11.201371492773417f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.64304966 65.23802172 0.30140842 {Pose: {Head: [-158.38863017462717f, 2.7200002029755823f, 4.276779979565729f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.97757894 65.78531457 1.17514113 {Pose: {Head: [-148.25004088554195f, 10.014943424978082f, -8.008035778525418f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.38494863 65.58601015 1.33846731 {Pose: {Head: [-135.91244680101332f, -26.122814724903805f, 38.645276722777915f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.73325108 64.11478936 0.25793610 {Pose: {Head: [-124.62291884993148f, 59.97401611480001f, -82.3882196113928f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.58000028 65.19578965 1.08340599 {Pose: {Head: [-117.97260755184905f, -0.418486471867034f, -4.751069162935198f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.91819313 64.84248211 -0.02506359 {Pose: {Head: [-169.80271023087772f, -0.8638789133274167f, 12.502884455397691f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.68271578 65.19730856 0.31813680 {Pose: {Head: [-158.3214655445421f, 2.609019200080322f, 4.560075665238461f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.65564266 64.86717893 -0.24160755 {Pose: {Head: [156.98238255675636f, 6.120412785859191f, 11.976665871679975f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.43892524 64.78559942 -0.04918828 {Pose: {Head: [-169.56081609934853f, 5.219249074016228f, -61.94605205975605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.82513117 64.73527151 0.24178537 {Pose: {Head: [-144.38478830334486f, 2.037680935980852f, 5.484327028802856f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.55156150 65.78592630 1.60016995 {Pose: {Head: [-137.33050265799142f, -32.010477906749934f, 34.350949180702926f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.18479790 64.79087850 -0.04161687 {Pose: {Head: [-168.26292083687704f, -2.439825066915123f, 2.989436667760678f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.78131408 66.20457978 1.92580297 {Pose: {Head: [-140.05640729213448f, -2.1141836969106786f, 1.384154033455345f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.37522876 65.11319615 0.56809132 {Pose: {Head: [-123.64201343236016f, 4.282715788148699f, -4.542658454513204f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.66544798 64.45447234 0.35423000 {Pose: {Head: [-128.2204227064842f, 57.94050709129119f, -54.90019866053785f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.85771816 65.72424871 0.74490735 {Pose: {Head: [142.40958789671402f, 31.20566302270717f, -25.45718252541073f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.20252671 65.44211931 0.91476054 {Pose: {Head: [-162.43873372008002f, -8.85699990760454f, -55.56425977485262f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.73244611 65.32962120 0.46449877 {Pose: {Head: [-169.50739768762932f, -16.570764584573492f, 10.471798047181089f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.81763790 64.92422068 -0.06681183 {Pose: {Head: [-170.86399875819956f, -0.6325341094621167f, 8.965704056151415f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.63537375 65.24083099 1.08097644 {Pose: {Head: [-119.51020835286101f, -7.784220944464448f, -0.917670225352677f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.51047422 66.53112394 2.30511842 {Pose: {Head: [-133.8852483977756f, 20.319370088353857f, -9.045928768864838f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.93150432 66.31678194 2.10108017 {Pose: {Head: [-127.42605734025568f, -10.662745230414137f, 14.789021893227043f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.11657843 64.56973559 1.03640572 {Pose: {Head: [-46.82424606219728f, -4.930683662938737f, 12.760491345912648f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.24382591 66.27975236 2.20463959 {Pose: {Head: [-124.63044287801003f, 43.72480020830901f, -27.83312231297811f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.71309437 63.81508526 0.28588950 {Pose: {Head: [7.349574998357765f, 7.44636989912742f, -29.603439076222898f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.49122778 65.09560021 0.57835550 {Pose: {Head: [-123.8760517586145f, 1.6221845442193945f, -2.7717942646942584f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.32743482 64.74978355 0.25194757 {Pose: {Head: [-146.26964026287843f, 2.5944627171871875f, 12.650068300503388f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.14760169 65.55022679 1.19986024 {Pose: {Head: [-131.98551414230045f, -1.6727581788114607f, -9.847240161469704f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.87389957 65.05617233 0.49057798 {Pose: {Head: [171.1521074608166f, 174.89471040890305f, -14.472484522611081f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.12186379 65.81817894 1.23845713 {Pose: {Head: [-147.1001945177545f, 1.3530443576999438f, 5.7865863210875395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.40162039 65.01847997 0.24660161 {Pose: {Head: [-152.42350456785434f, 4.508512889203826f, 5.368387772049274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.44002672 64.63529958 0.17174031 {Pose: {Head: [82.84630594693891f, 86.69782652311254f, -26.17620781415462f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 3.14538040 65.73319030 1.70225185 {Pose: {Head: [-126.04400223241251f, -39.56093684085346f, 40.81551598658758f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.42222550 65.34296831 0.96597923 {Pose: {Head: [-127.03653971608243f, 3.2973830433931495f, 19.879251835333587f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.41889688 66.41647172 2.08678425 {Pose: {Head: [-139.09150657866672f, -13.065533092603644f, 14.139682589491878f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.86969967 64.48098446 0.51326627 {Pose: {Head: [-64.32022676356867f, -103.02019115354832f, 34.26918095543431f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.68851396 64.75324689 -0.17499386 {Pose: {Head: [-176.45671760283633f, -3.386678481286689f, -22.91823844506924f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.90373279 64.90500668 -0.09883929 {Pose: {Head: [-171.5100479529186f, -1.8758048503351485f, 24.15068670259186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.80699306 64.83930763 -0.14742502 {Pose: {Head: [-172.53131784757704f, 0.8054617451234025f, 7.8680868889662285f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.41870175 65.12280311 0.40604309 {Pose: {Head: [-153.77287049351122f, 4.912869872728116f, 14.44805266070943f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 0.90530313 64.97177864 -0.15411694 {Pose: {Head: [-172.5921448922285f, 0.591841080324309f, 5.982187196556242f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.64888169 65.24405435 1.02704935 {Pose: {Head: [-120.86203311855941f, -12.134942435120093f, 29.77562082566192f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.64644491 64.71043087 0.40561741 {Pose: {Head: [-129.52788219027033f, -46.427827587418626f, 52.519240518315414f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 3.10513741 64.51410240 0.13147486 {Pose: {Head: [-84.39320037486179f, -101.57581095241736f, 33.317340496149306f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 2.89332784 66.01031812 1.81225958 {Pose: {Head: [-132.9407809064365f, -28.242697996065647f, 30.57360857455236f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}
summon armor_stand 1.75586635 65.03880796 0.63173483 {Pose: {Head: [-130.28974635221306f, -50.614096265723184f, 51.8483321840445f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Small: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



