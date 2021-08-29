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
summon armor_stand 2.52249422 -3927.36998131 3.06834943 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.15915997 -3927.33091881 1.60529357 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.10497498 -3927.29185631 2.14636954 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53922507 -3927.25279381 3.06141145 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66744472 -3927.21373131 1.17129316 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.52212052 -3927.17466881 1.58373059 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.07592040 -3927.13560631 2.40243191 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33931200 -3927.09654381 2.17498210 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.82407562 -3927.05748131 2.16763952 {Pose: {Head: [-90.00000000078296f, -4.90609904532844e-12f, -1.4819965219145118e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.66126329 -3927.01841881 1.83805347 {Pose: {Head: [-90.00000000380086f, 1.4477352833015725e-11f, -5.173807563414624e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.88102975 -3926.97935631 1.57163252 {Pose: {Head: [-89.99999999968294f, 1.5374292039586948e-11f, 1.8041390978114413e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.23527549 -3926.94029381 1.65608205 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.49731661 -3926.90123131 2.49289870 {Pose: {Head: [-90.00000000131936f, 1.8104106873134327e-11f, 1.1563749591808403e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.74773959 -3926.86216881 2.46004429 {Pose: {Head: [-89.99999999942978f, 8.100072760646011e-12f, 1.7565237162885366e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53412939 -3926.82310631 2.89678150 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.38386464 -3926.78404381 2.43028039 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41866367 -3926.74498131 2.56903769 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.54343437 -3926.70591881 2.86881136 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.33470137 -3926.66685631 3.31527671 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.24939818 -3926.62779381 2.28940167 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.98027414 -3926.58873131 2.88922434 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.84114969 -3926.54966881 1.12518362 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.09944780 -3926.51060631 3.13627793 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.42351033 -3926.47154381 1.95745857 {Pose: {Head: [-90.0000000025998f, -5.5749277212990184e-11f, -1.2532614496114362e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.81395705 -3926.43248131 1.57084531 {Pose: {Head: [-90.00000000128655f, -6.418743120077926e-11f, -1.026205562772905e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65356275 -3926.39341881 1.27557014 {Pose: {Head: [-90.00000000274588f, -1.1470595539751287e-11f, -1.2011668916892216e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.34796695 -3926.35435631 2.12870497 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68687059 -3926.31529381 1.44241953 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.56384808 -3926.27623131 1.80203104 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.85625629 -3926.23716881 2.26041317 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.52279934 -3926.19810631 1.31048375 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.65608819 -3926.15904381 3.12451779 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61599658 -3926.11998131 3.06915109 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.26213009 -3926.08091881 2.65214660 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.27673960 -3926.04185631 3.20611639 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32646570 -3926.00279381 1.72463446 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.13490052 -3925.96373131 1.51531356 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76981146 -3925.92466881 2.12053050 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.66179386 -3925.88560631 1.27592732 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.04756348 -3925.84654381 1.65601608 {Pose: {Head: [-89.99999999999999f, -7.527752794560636e-14f, -3.0463497661587302e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66165132 -3925.80748131 1.39357377 {Pose: {Head: [-89.99999999999999f, -7.515101552984035e-14f, -2.136521532735267e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.47208401 -3925.76841881 2.95904846 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.07834664 -3925.72935631 1.84803959 {Pose: {Head: [-90.00000000015206f, 2.899017885847916e-12f, 1.9892439904326693e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.16015435 -3925.69029381 1.72128377 {Pose: {Head: [-90.00000000028182f, 1.7965744335609623e-12f, -5.7429013174239044e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52584878 -3925.65123131 1.83783356 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.64655723 -3925.61216881 2.03531679 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.36197245 -3925.57310631 1.75244796 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.21472541 -3925.53404381 2.88372098 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.54077868 -3925.49498131 1.46764932 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.55476860 -3925.45591881 2.14570980 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56186766 -3925.41685631 1.52890389 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.67190757 -3925.37779381 1.48017194 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.50080683 -3925.33873131 3.41948286 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.40131115 -3925.29966881 2.47956328 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.64050416 -3925.26060631 1.45524655 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.59746666 -3925.22154381 2.53065456 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.58433723 -3925.18248131 3.35907996 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.68132962 -3925.14341881 3.12573649 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.98470398 -3925.10435631 2.35580286 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.85181269 -3925.06529381 1.59561558 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.00062893 -3925.02623131 2.53904879 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56631304 -3924.98716881 2.08893648 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.33004274 -3924.94810631 2.62903291 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.12825401 -3924.90904381 1.61822381 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50314625 -3924.86998131 1.54760005 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62296005 -3924.83091881 1.99065873 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.61157892 -3924.79185631 2.48475855 {Pose: {Head: [-89.99999999999999f, 8.21234330979928e-14f, 2.011414376780102e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.02312454 -3924.75279381 2.24187744 {Pose: {Head: [-89.99999999999999f, 8.214263549965202e-14f, 4.306555789728736e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67983612 -3924.71373131 2.97035454 {Pose: {Head: [-90.0000000000313f, 2.9172490024061595e-13f, 1.0892574829590985e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.21852728 -3924.67466881 2.55075875 {Pose: {Head: [-89.99999999999999f, 3.8411799782023317e-13f, 1.493943156807678e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.40981052 -3924.63560631 2.89337397 {Pose: {Head: [-90.00000000003132f, 2.347716123448742e-13f, -1.7430833895620766e-13f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.63813565 -3924.59654381 2.28142545 {Pose: {Head: [-90.00000000003132f, 2.347578311036272e-13f, 1.1246297609201887e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74436203 -3924.55748131 2.39330125 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.04946040 -3924.51841881 1.10716806 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.51214911 -3924.47935631 2.19458095 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.07933120 -3924.44029381 3.21365016 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.61398472 -3924.40123131 2.41065404 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33498502 -3924.36216881 2.99415881 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.90055329 -3924.32310631 1.15322572 {Pose: {Head: [-89.99999999999999f, -1.1605627952358385e-13f, 4.312892578467141e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.36018959 -3924.28404381 1.60323756 {Pose: {Head: [-89.99999999999999f, -1.162049594271911e-13f, 2.964620002511694e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75028383 -3924.24498131 2.64200972 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.11657538 -3924.20591881 1.54968603 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.60582851 -3924.16685631 2.38839366 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.57420431 -3924.12779381 1.95668802 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.19028018 -3924.08873131 3.11437456 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.27491708 -3924.04966881 3.37680476 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.12739687 -3924.01060631 1.85328947 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.68008646 -3923.97154381 3.27679611 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.87625669 -3923.93248131 2.59876274 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.19700612 -3923.89341881 1.61962327 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.42497960 -3923.85435631 3.32949096 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.27302638 -3923.81529381 1.93463766 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56893514 -3923.77623131 2.51866507 {Pose: {Head: [-89.99999999999999f, -4.080460122665238e-13f, 4.988198741221307e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.92427462 -3923.73716881 2.91808101 {Pose: {Head: [-89.99999999996875f, -4.081211612523398e-13f, 1.7068816862449407e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.55932908 -3923.69810631 3.07790072 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47764434 -3923.65904381 2.35133495 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.55845593 -3923.61998131 1.31045867 {Pose: {Head: [-89.999999999918f, 1.9073905142877173e-12f, -4.1441692392685385e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.28917026 -3923.58091881 1.52876987 {Pose: {Head: [-89.99999999989396f, 2.00719863042392e-12f, -1.1148022454189861e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.85101792 -3923.54185631 2.66370012 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.53702286 -3923.50279381 2.28103985 {Pose: {Head: [-90.00000000186012f, -1.2069642151667462e-11f, -1.3416962307386758e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.31405739 -3923.46373131 2.11321143 {Pose: {Head: [-90.00000000579938f, -9.958812816832134e-11f, -4.270536202159365e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.70519305 -3923.42466881 1.77744013 {Pose: {Head: [-90.00000000248833f, -1.0713659164734635e-10f, -2.502072436294143e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.36154724 -3923.38560631 2.97848489 {Pose: {Head: [-90.00000000056684f, -9.258760739427366e-12f, -5.764415187559422e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.31037540 -3923.34654381 2.94166670 {Pose: {Head: [-90.00000000102884f, 6.79957877161333e-13f, -5.408231595688228e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.02567522 -3923.30748131 2.78716116 {Pose: {Head: [-90.00000000011754f, -6.418713034162157e-13f, 4.297922812365113e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.55886517 -3923.26841881 2.17240549 {Pose: {Head: [-90.0000000000214f, 1.6231011669852557e-12f, 4.4583607882459856e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.66428508 -3923.22935631 2.50488712 {Pose: {Head: [-89.99999999996905f, 1.8356730300130927e-12f, 3.319137858818797e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37144518 -3923.19029381 3.23452041 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.77620354 -3923.15123131 2.11367515 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62894236 -3923.11216881 1.69274088 {Pose: {Head: [-90.00000000005893f, 6.928076399417608e-13f, 4.117385216909362e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.22097528 -3923.07310631 1.43902783 {Pose: {Head: [-90.00000000003006f, 7.467717661667837e-13f, 4.257488449679491e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.82153915 -3923.03404381 2.82124776 {Pose: {Head: [-90.00000000004644f, -1.6954100818163782e-23f, -4.429937021847415e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35848314 -3922.99498131 2.62448230 {Pose: {Head: [-90.00000000003115f, 1.4621629182129887e-12f, -1.8089458689902057e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.45042339 -3922.95591881 2.46241166 {Pose: {Head: [-90.00000000006212f, 1.4491319099674581e-12f, -4.512147603448573e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79045836 -3922.91685631 1.48523406 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.61101487 -3922.87779381 2.02415612 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.78814846 -3922.83873131 3.36682324 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.21809651 -3922.79966881 2.32453881 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67041718 -3922.76060631 3.14303632 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.63604200 -3922.72154381 2.93528459 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.56782367 -3922.68248131 1.79594493 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.84290813 -3922.64341881 1.11988412 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.59993214 -3922.60435631 2.25897663 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.85205148 -3922.56529381 2.21814899 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78173318 -3922.52623131 1.75081628 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72981352 -3922.48716881 2.64186534 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.66748652 -3922.44810631 1.85292340 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34168639 -3922.40904381 1.48321907 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65517893 -3922.36998131 2.56292624 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.56289075 -3922.33091881 2.41690220 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.29096935 -3922.29185631 3.41277130 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.58008012 -3922.25279381 3.00322418 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.85900217 -3922.21373131 3.22925269 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.24288132 -3922.17466881 1.54547352 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.67421872 -3922.13560631 2.38479118 {Pose: {Head: [-89.99999999999999f, 5.139081414584941e-14f, -5.422441400045011e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.10662123 -3922.09654381 2.51094586 {Pose: {Head: [-89.99999999999999f, 5.149482307747993e-14f, -4.489791970076783e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.89210435 -3922.05748131 2.26068873 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.63963995 -3922.01841881 2.86595079 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.45894113 -3921.97935631 1.97633441 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.17322302 -3921.94029381 3.02455326 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.32684534 -3921.90123131 1.51659428 {Pose: {Head: [-90.0000000006696f, -3.222894810732103e-11f, -4.749502622653791e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.51958654 -3921.86216881 1.73032747 {Pose: {Head: [-89.9999999956813f, -2.9755289170071595e-11f, 2.133709938975588e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.27163935 -3921.82310631 1.88966287 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.60021267 -3921.78404381 2.56684214 {Pose: {Head: [-89.99999999896949f, -8.635880069564371e-11f, 1.161069490310482e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.01033845 -3921.74498131 2.48349443 {Pose: {Head: [-89.99999999912242f, -5.539985049274573e-11f, 1.5466719293935247e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.74385861 -3921.70591881 2.89829776 {Pose: {Head: [-89.99999999874231f, 4.413716271960367e-11f, 2.862726488113781e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.33150756 -3921.66685631 1.44790008 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.89142652 -3921.62779381 2.66970499 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.62076660 -3921.58873131 1.35735539 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.05296773 -3921.54966881 1.95066959 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.55139271 -3921.51060631 1.32515351 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.58954247 -3921.47154381 3.28431253 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.58870921 -3921.43248131 2.65574046 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.64145283 -3921.39341881 2.13451126 {Pose: {Head: [-89.99999999996771f, 2.4755609558717777e-12f, -6.737023941666042e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.40863196 -3921.35435631 2.17944323 {Pose: {Head: [-89.99999999996687f, 2.0900850583456478e-12f, -9.01580254592048e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.04203950 -3921.31529381 2.77235338 {Pose: {Head: [-89.99999999993959f, 4.570420562787192e-13f, -8.510957835856273e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65106335 -3921.27623131 2.64300220 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49533021 -3921.23716881 1.10519059 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.52148120 -3921.19810631 2.41389978 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.54444722 -3921.15904381 1.20594337 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61252859 -3921.11998131 1.80696296 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51534718 -3921.08091881 2.88572879 {Pose: {Head: [-89.99999999960366f, 1.010193740989307e-13f, -1.0770418280367793e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72859430 -3921.04185631 2.85233248 {Pose: {Head: [-90.00000000094435f, 8.034669911887114e-14f, 1.872410945423613e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.14775138 -3921.00279381 3.23485538 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.55260795 -3920.96373131 3.36876278 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80667294 -3920.92466881 1.94509057 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.07620460 -3920.88560631 1.36851054 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.89813448 -3920.84654381 3.30637834 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.90382816 -3920.80748131 2.67040308 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.84581497 -3920.76841881 2.21945845 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56676422 -3920.72935631 1.28119193 {Pose: {Head: [-89.99999999999999f, 2.7602642315755444e-13f, 4.577312633981032e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.15153233 -3920.69029381 1.20960220 {Pose: {Head: [-89.99999999999999f, 2.560312151384178e-13f, 4.5766922407177195e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.33228478 -3920.65123131 2.56307161 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50308725 -3920.61216881 2.72932662 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.99260297 -3920.57310631 2.17685735 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56478720 -3920.53404381 1.60333554 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.19795420 -3920.49498131 1.15077684 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38065776 -3920.45591881 2.60239072 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.18634661 -3920.41685631 1.24292573 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.46571541 -3920.37779381 1.33139419 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.60129839 -3920.33873131 2.65285542 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37298573 -3920.29966881 3.41305233 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.07142898 -3920.26060631 1.57797100 {Pose: {Head: [-89.99999999996936f, 5.481819265259745e-13f, -2.3857073935334273e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.82036246 -3920.22154381 1.87275110 {Pose: {Head: [-89.99999999996936f, 5.506932037703224e-13f, -3.2815352177723053e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.10630664 -3920.18248131 2.19059514 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.45921875 -3920.14341881 2.20107732 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.90898445 -3920.10435631 1.28875138 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.73853177 -3920.06529381 1.50866172 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.23615243 -3920.02623131 3.29436142 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.04781521 -3919.98716881 2.13834050 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47116836 -3919.94810631 2.24997636 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.21863756 -3919.90904381 3.06644481 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.89634699 -3919.86998131 1.71710236 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32033639 -3919.83091881 3.40413184 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62484078 -3919.79185631 1.85825673 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.40814190 -3919.75279381 1.93397063 {Pose: {Head: [-90.00000000184436f, -1.1316871618432551e-13f, 3.889428768850745e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.21282258 -3919.71373131 1.34951429 {Pose: {Head: [-90.00000000210974f, -1.0691157519707229e-13f, -1.0513671880271579e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.15552206 -3919.67466881 2.19479659 {Pose: {Head: [-89.99999999999999f, 2.3604994265761914e-14f, -2.2909932377155718e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.79399540 -3919.63560631 2.28493239 {Pose: {Head: [-89.99999999999999f, 2.3702763385559548e-14f, -1.3784672689732222e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.59362577 -3919.59654381 3.42058424 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



