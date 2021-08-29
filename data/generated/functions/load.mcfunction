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
summon armor_stand -0.03728625 68.86662972 0.01826988 {Pose: {Head: [23.06487039602903f, 111.76455326737245f, -179.396068360414f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.59607723 67.52296510 -0.04407600 {Pose: {Head: [23.76129805131078f, 41.705172245581394f, 50.650592081555544f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23313522 67.29621008 -0.08244016 {Pose: {Head: [-139.9625094894788f, -107.01458410234581f, 177.26728740905097f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.10627460 68.73467313 0.43039243 {Pose: {Head: [145.97491970885432f, 131.6239456985215f, -54.36105480628833f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.36599082 68.60035610 0.47445779 {Pose: {Head: [-74.49842784295888f, -53.79186472554161f, -50.745089423679005f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21977524 67.29062954 0.06529546 {Pose: {Head: [44.85497257140878f, -100.93899186591607f, -40.788106587953806f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.71185331 67.78259342 -0.25152699 {Pose: {Head: [0.7926400942950806f, -166.19477409383052f, 73.16945002270779f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.71667735 68.06097783 0.36704211 {Pose: {Head: [127.75401888516409f, -118.67480009141768f, -20.661957272858846f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.24000608 67.53805849 0.56187796 {Pose: {Head: [-86.16027422472416f, -43.53831728915097f, 136.81181023376962f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.03730879 67.62911494 0.67759435 {Pose: {Head: [-91.22631679308421f, 25.830175020892728f, -135.9779418222469f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.43841477 68.68352390 0.26546275 {Pose: {Head: [-47.23422319970321f, -68.97869375589681f, -79.45189505771191f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.05517134 67.28137854 -0.18749414 {Pose: {Head: [-100.83984980395306f, 105.66196746702269f, -117.31101929989747f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.35249044 67.49464449 0.44904261 {Pose: {Head: [146.36304163861897f, 134.14838323320038f, 168.03062080482138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.05261024 68.74089293 -0.43053903 {Pose: {Head: [-13.309834839868415f, -170.15914796659285f, -178.13307274752216f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.01928404 67.25753074 -0.00113132 {Pose: {Head: [-45.46527340489769f, -90.08880812323355f, 63.649515113303316f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.26126118 67.33218630 -0.21617851 {Pose: {Head: [42.24256250738563f, -45.88385963419913f, -36.38910713831832f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.30647637 68.63696664 0.47371824 {Pose: {Head: [87.21219899920322f, -129.50035504133828f, 89.96403122868756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60588764 68.58392848 -0.09675315 {Pose: {Head: [-177.59860257042902f, 65.95985133120351f, 33.540477810498025f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.50615770 68.43559982 0.50294091 {Pose: {Head: [156.41668092758584f, 155.98952638908906f, -74.47740379389103f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.21768912 67.30915081 -0.18282533 {Pose: {Head: [97.48676967648026f, 76.57405388652514f, 93.71867064941996f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.46654934 68.64737433 -0.29766153 {Pose: {Head: [-137.63627166503096f, -162.49211953414115f, 31.3692062153248f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17112233 67.56382702 -0.60859762 {Pose: {Head: [146.32374770390342f, 19.34795866045299f, 137.14788676390472f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35528411 67.60752507 0.56135521 {Pose: {Head: [147.30732755164306f, -151.85080065148685f, 173.36738936712624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.58508253 67.87990788 0.52219461 {Pose: {Head: [-39.632468492880896f, -40.96587085216968f, 120.37656081275803f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.65200000 67.80982117 0.39924687 {Pose: {Head: [51.27242410104836f, 160.59232885346577f, 80.42091169961874f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.24908770 68.82578610 0.06081364 {Pose: {Head: [-172.21179599139126f, 111.73445667661326f, -29.026120581733945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.03831297 67.68822942 0.71190049 {Pose: {Head: [109.64631901265854f, 152.14449586076955f, 96.036862999031f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32519001 68.71109299 0.34918083 {Pose: {Head: [136.3449575944784f, 119.0644624689983f, -33.36030119822157f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.15803370 68.60536295 -0.57330082 {Pose: {Head: [-115.02391260800285f, 178.42905288437547f, 17.824400657788367f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.80190839 68.10546404 -0.05869992 {Pose: {Head: [-85.9591259599861f, -94.339039463346f, -161.37501737845616f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.16269530 68.85073953 -0.02360793 {Pose: {Head: [0.21748188033489768f, 95.07936115010791f, 149.06895176414693f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.64456986 68.54494490 0.01119234 {Pose: {Head: [-86.04181398250991f, -89.173103170478f, -127.58608041580757f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35073789 67.35630225 -0.16314512 {Pose: {Head: [46.0785814713475f, 63.01602624805626f, -2.4354649481288426f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.31399131 68.70848043 -0.36396071 {Pose: {Head: [54.64283985672267f, 38.152459232072275f, 177.5352102158125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.43442450 68.70045672 -0.22942370 {Pose: {Head: [36.72952635240447f, 15.20023155242721f, 150.37897206465655f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.57130075 67.49508119 0.00007269 {Pose: {Head: [19.54806499117549f, 52.685161410912706f, -45.202108353919805f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.02750640 68.79148191 0.34084811 {Pose: {Head: [56.18899002888494f, -135.1894242972074f, 154.5053099523448f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40714067 68.00972595 0.69267599 {Pose: {Head: [-43.35983670377367f, -14.938572761378985f, 109.36752963718124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64257813 67.90738047 0.45976074 {Pose: {Head: [-106.16498505179125f, 45.30713012334515f, 148.24082171976048f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67045205 67.64933969 0.16775358 {Pose: {Head: [145.43120443719698f, -104.89871544067671f, 174.83328518801116f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72632161 67.88746289 -0.30027919 {Pose: {Head: [177.50392406189735f, 6.660867975517126f, 100.85918115145702f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.06049796 67.26562404 -0.09837353 {Pose: {Head: [-113.7141427890236f, 99.65942084039106f, -138.02072326386605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19440130 67.38539059 0.38997389 {Pose: {Head: [-9.791709436583593f, -8.822412653883545f, -11.090103961601958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50354513 68.05448006 0.62827275 {Pose: {Head: [71.18254636367013f, 174.42636052407778f, -82.0948237794904f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75678583 67.91038660 0.22909688 {Pose: {Head: [39.1986665986484f, -147.82537008989067f, -89.39608678075318f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.67426104 67.68572183 -0.22750586 {Pose: {Head: [-79.57410035554368f, 106.62888907700832f, -38.71860592117109f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.43679874 67.84776567 -0.64143954 {Pose: {Head: [-107.16924429157402f, 173.67055857854092f, 124.58470074078237f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.13222486 68.83936371 0.16537237 {Pose: {Head: [-136.8717424689036f, 59.097114539335f, 10.864654560823732f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.50618891 67.43686447 -0.02648828 {Pose: {Head: [-163.5408862230515f, -52.49721787598737f, -138.56619208540312f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.27706984 68.63015646 -0.49934668 {Pose: {Head: [-120.4052025890121f, 164.58348834667692f, 38.60783388792687f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.61035750 68.54867728 -0.19860520 {Pose: {Head: [37.232449429927144f, 35.67451307668839f, 139.06696349615441f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.78168439 67.89176530 -0.09037609 {Pose: {Head: [152.68964440810294f, -81.15262765573178f, -55.796339641079804f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77385983 67.84579147 0.05026967 {Pose: {Head: [15.188065683177916f, 34.953762955307454f, 71.84978647130932f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40818413 67.38947582 0.16962555 {Pose: {Head: [-7.714877803053782f, -62.62879107081395f, -6.638416802139444f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.01134358 67.26209340 0.08700146 {Pose: {Head: [139.30590222028908f, -97.1490798839608f, -119.13037553629474f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.64048787 68.32249982 -0.41294556 {Pose: {Head: [-129.48300948836473f, 175.48333362052688f, -65.20096307148741f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.39512043 67.36996763 0.11237175 {Pose: {Head: [146.3569137683572f, 100.03723406856865f, 97.51842860733915f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76934589 68.19969309 0.19399387 {Pose: {Head: [-0.23150721325411183f, -44.63014932807651f, 114.29597248669246f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74260774 67.99361181 -0.30354047 {Pose: {Head: [-28.700930193762822f, 120.3466228871286f, -128.74335493879525f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64076599 68.09527345 0.48651157 {Pose: {Head: [93.82076170038134f, 128.8833944403514f, -22.826434029655555f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80461538 68.08931153 0.01496298 {Pose: {Head: [-13.766780699041588f, -88.061528748407f, -58.60018925838398f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79884229 67.99370695 0.07394034 {Pose: {Head: [-55.98275290513752f, 84.55830446539241f, -160.5547104743198f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.15329576 68.35575258 0.73406539 {Pose: {Head: [85.99831796256628f, -174.01338268788757f, 138.94965542560664f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52501021 68.59653612 0.29583502 {Pose: {Head: [-11.008574593573535f, 43.73858828187862f, -157.69886583540122f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.61449788 68.43572533 0.36255187 {Pose: {Head: [48.51728507956853f, -158.41802426576413f, 109.7670053959213f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.07294904 67.50323596 0.57467454 {Pose: {Head: [153.81701256985102f, -175.23824752246466f, -167.69951396851343f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.66664185 68.51365935 0.01981264 {Pose: {Head: [-163.09864866295845f, -122.08270360164816f, -53.66106698054678f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.30545261 67.31834597 0.03580696 {Pose: {Head: [-127.15312956243989f, -85.35287960454234f, 124.47957185518887f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80200099 68.12138691 0.04093169 {Pose: {Head: [30.406897087124904f, 105.66691055431507f, -83.74316187645826f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.03376895 67.59195788 -0.65253232 {Pose: {Head: [87.58567679852251f, 29.08941799336496f, 46.208644582108334f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64547356 68.53362545 -0.09875908 {Pose: {Head: [-177.317267014052f, 65.00438437818332f, 38.50286554139619f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17138268 68.77913652 -0.32466711 {Pose: {Head: [-49.99678756100293f, -115.4881060600051f, -98.99202123881511f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.10509822 68.57275931 -0.61395314 {Pose: {Head: [-31.06283467006984f, -170.5612995642832f, 179.65965707737953f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68483642 68.44892483 -0.17327313 {Pose: {Head: [142.1788406353344f, -75.19683754668552f, 117.05930527876257f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.71318266 68.43558475 -0.02295486 {Pose: {Head: [12.765644005044663f, 103.95089533258593f, 111.02283003947548f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.66372890 67.90911602 0.42928541 {Pose: {Head: [-28.648634804935003f, -44.347805647309144f, 115.01119771785817f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.70210910 68.24999403 -0.34675273 {Pose: {Head: [168.044183193886f, 34.522401391515245f, -94.20872171458072f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.12486936 68.61644668 0.57087597 {Pose: {Head: [100.7172224416806f, 135.8490757243745f, -89.88230048832641f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40249967 67.69039520 0.58981412 {Pose: {Head: [109.60396218074281f, 137.09686843027853f, 137.31666463559375f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37534229 67.97261901 -0.70667406 {Pose: {Head: [-53.70102820393176f, -156.417789127843f, -23.473927252585973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.60539617 68.41308924 -0.39866190 {Pose: {Head: [145.51355541723296f, 52.29079444229662f, -107.40635395225739f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.21103032 67.83621949 -0.74337877 {Pose: {Head: [-47.84817148762549f, 179.61506782373226f, 42.077883536801274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.80255367 68.00401985 -0.02891957 {Pose: {Head: [22.095476929097f, -35.8264785235751f, 84.34563202657009f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50935999 68.13967703 0.61882531 {Pose: {Head: [97.6682464861987f, 141.75592220530393f, -27.398499083646605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.05880181 68.84606813 0.17581804 {Pose: {Head: [52.48272698332739f, -113.6851888697827f, 145.0392110617624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.15078812 67.67111060 -0.68733248 {Pose: {Head: [81.23674870086161f, -14.146673204292581f, -3.325992032000667f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56153281 68.04883627 0.57692535 {Pose: {Head: [-45.989012421880325f, 38.08381777392507f, -142.2054378078516f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62852635 67.63332709 0.26289521 {Pose: {Head: [-129.12812313819268f, 51.083782024626935f, 149.65698848136094f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52607595 67.73142216 0.51184003 {Pose: {Head: [-91.1868478011653f, 47.17741915914423f, -175.1266887179303f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68892304 67.65092808 -0.06589575 {Pose: {Head: [13.821151343245432f, 144.97543880040524f, -62.44445398883489f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71368349 68.01524906 0.36982683 {Pose: {Head: [-10.366982563167591f, -22.968003324109976f, -73.55365400402702f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34489241 67.81573059 0.68447260 {Pose: {Head: [108.49723911147741f, 148.23447257290277f, 142.40470987791076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64634816 67.80162706 -0.40314765 {Pose: {Head: [-43.440266424179846f, 124.1901672578702f, -126.38472845378554f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79353858 68.19901850 0.00280749 {Pose: {Head: [19.33548484573625f, 25.37888038555381f, -99.85624495427541f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.25771381 68.46811014 -0.64607481 {Pose: {Head: [-73.68625200051605f, 143.48142026906012f, 52.13038301236849f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.20580456 68.81734484 -0.19026932 {Pose: {Head: [-96.91248312573497f, 105.3058291210958f, 77.94712790441491f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.25665556 68.75717502 -0.31607466 {Pose: {Head: [-136.97932489502716f, 170.35120085561255f, -16.116195567227116f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.15215520 67.27357036 0.05279657 {Pose: {Head: [24.974246020947117f, -133.98590068273708f, -14.81985994532395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.21754595 68.76626204 0.32517903 {Pose: {Head: [-47.58890906179848f, -64.00748376377078f, -132.2997312897727f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23318280 67.29991794 0.11154839 {Pose: {Head: [123.93593805373085f, 98.2223553088576f, 121.52501985082631f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.65326886 68.39488965 -0.33332503 {Pose: {Head: [107.14866570457318f, -65.52281687287038f, 29.612830670118836f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.46905050 68.37166428 0.57685157 {Pose: {Head: [143.59929662351766f, -149.83452128985542f, -19.968531573641062f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76979338 68.01458380 0.23123765 {Pose: {Head: [-177.13619894486237f, -178.82825873012357f, 93.91316054927273f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33149067 68.79611060 -0.01667586 {Pose: {Head: [-161.65185318122505f, -10.888597736096884f, 24.544706232383575f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.27037273 67.46657181 0.46916611 {Pose: {Head: [161.2205074744294f, 159.9469654670462f, -170.76710793749746f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23196569 67.50831911 0.53611950 {Pose: {Head: [121.41545380123625f, 132.87032357240955f, 128.7005498796916f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.68577659 68.20459605 0.39732586 {Pose: {Head: [127.13455610180873f, -121.17263991349344f, -8.611083975017559f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.68237097 68.28067797 -0.36758248 {Pose: {Head: [-52.30768440527412f, 118.70985177296272f, 38.20911523088879f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.18654529 67.30505521 -0.19956677 {Pose: {Head: [61.82675857882463f, 68.37832684867858f, 54.03407742923402f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47558834 68.52367535 0.45769169 {Pose: {Head: [-99.90652743209424f, -49.24311558722617f, -99.16638987284563f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66851530 67.75900331 -0.33064439 {Pose: {Head: [-134.89767815650586f, -162.22082026689807f, 106.11407209445974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66093615 68.06779707 0.45987390 {Pose: {Head: [-18.080762091123386f, 20.729303689401778f, -105.7261041471058f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.45668817 68.68328667 0.23325626 {Pose: {Head: [-0.10283497056919444f, 30.563584216396123f, 133.36341454601805f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.17135738 67.44808753 -0.49140882 {Pose: {Head: [-33.38551408294694f, -139.88499631477006f, 56.05611600265389f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47996829 67.91781695 -0.63011579 {Pose: {Head: [136.6788634247495f, 28.44888967304144f, -149.6986932448005f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.22722872 68.37283744 -0.70739412 {Pose: {Head: [82.17637111695963f, 8.363335232752789f, -128.1016634272703f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.26844428 67.72616946 0.68056454 {Pose: {Head: [-71.04184955549869f, 32.300534350104414f, -52.52449770102572f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71790239 68.05272403 -0.36451234 {Pose: {Head: [-82.13054731501667f, -117.53440763799972f, 13.911228760810701f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.53896126 68.04143938 -0.59785104 {Pose: {Head: [131.1379825936512f, -37.016509647210405f, -35.54325492966953f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.59128498 67.52663218 -0.10759376 {Pose: {Head: [-14.773630318426473f, -103.70583686544872f, -14.251207970119522f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40366013 67.45495002 0.34101346 {Pose: {Head: [44.69688294480759f, 175.47779176764595f, 35.71938608557194f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71947674 67.74835115 0.17892001 {Pose: {Head: [-103.85117084191359f, -74.56253088191744f, 57.97005405532582f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22255474 67.33300451 0.25817509 {Pose: {Head: [39.09306631520348f, -163.49910266221167f, 11.210857256325024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.00421871 68.86707710 0.03140932 {Pose: {Head: [32.380447191273106f, -100.12219149252621f, 167.6697200451171f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.08053315 68.15761887 -0.79549700 {Pose: {Head: [-65.34815516323616f, 172.68798232185887f, 84.76093382641369f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.13104455 68.85152748 0.09279880 {Pose: {Head: [-146.49670667667513f, -61.43374439201217f, -2.8741798217114045f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34551068 67.33606850 -0.03561317 {Pose: {Head: [-99.27627759271508f, 92.89397367239127f, -93.42673776259684f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.13737208 68.72882166 0.43068900 {Pose: {Head: [84.74210923063815f, -126.10681003903586f, 108.13330623109304f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.06480171 67.43956402 -0.50606340 {Pose: {Head: [149.3245163850862f, 35.14804385676986f, 139.38742577463645f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66455900 67.70566308 -0.28173997 {Pose: {Head: [45.841048793057354f, 37.800528321305734f, -44.924484158607825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65453730 68.52467448 -0.07952565 {Pose: {Head: [11.149942372921915f, -132.49738200388413f, -119.00762068327087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.52604104 67.51149389 0.26080980 {Pose: {Head: [-0.261549361913751f, -17.181250481092675f, 49.74868217052136f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.35978473 67.34889307 0.09832985 {Pose: {Head: [-4.870776884749182f, -72.82444571815537f, 50.214232590530145f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.09707779 68.77059594 -0.37084322 {Pose: {Head: [-23.979656454452734f, -131.96124752781785f, -152.56359268248553f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69821879 68.08883250 0.40018219 {Pose: {Head: [-102.68045302824206f, 54.01511856207926f, 139.9087234697332f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.59966033 68.55793135 0.20809593 {Pose: {Head: [-15.903130792427396f, 63.54559863158885f, -162.0868706538025f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62089983 67.56788465 0.13486185 {Pose: {Head: [36.038470148156364f, -126.18161347004991f, -64.89010036388505f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.78480362 67.90812128 -0.09273157 {Pose: {Head: [11.11438490938851f, 141.6693364347801f, 73.61218185985756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.33642564 67.48089511 0.44373664 {Pose: {Head: [-54.57488371916342f, -55.04582590070008f, 100.91900364668949f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.66451322 68.51372636 0.05626370 {Pose: {Head: [67.75093393172567f, 95.3788502857397f, 172.24646170469572f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.52615646 67.56192512 0.34775398 {Pose: {Head: [-48.796703591993555f, -62.31217668395921f, 112.28569130834948f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.54153467 67.99367074 -0.59190488 {Pose: {Head: [109.35805259416794f, 42.683789758174385f, 6.950618868419597f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19627182 68.62382812 -0.54289665 {Pose: {Head: [157.16019452915293f, -0.42555199118330833f, 19.661016279592662f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.75215358 68.11905493 -0.28180702 {Pose: {Head: [-139.67326927863425f, -170.72507542088442f, -89.19797032847934f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76710597 67.92660757 0.20354443 {Pose: {Head: [-19.490209418031103f, -66.34190301398678f, 116.56541614332558f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.08062993 68.51269208 -0.66270247 {Pose: {Head: [-97.74030934001267f, -157.84439150662362f, -26.003752242336745f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.11089916 68.81940974 0.25127213 {Pose: {Head: [72.47070491615108f, 113.02828547060909f, -137.733728533884f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60825999 68.47388381 -0.33035102 {Pose: {Head: [166.04299538584553f, 42.006935405909495f, 32.026606102374906f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.18172423 68.77654112 0.32476182 {Pose: {Head: [-4.256409576453377f, 2.622538601132485f, 164.56446511289408f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67598212 68.44512806 -0.21211459 {Pose: {Head: [-89.51225830939883f, 106.18413484191029f, 130.6930662598978f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.39248418 68.75416768 0.12609779 {Pose: {Head: [8.239856516012216f, 37.05539288500844f, -157.30362200832738f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21135173 67.64227581 0.65352179 {Pose: {Head: [-79.33773403221238f, -34.764355281344116f, 78.64706364959876f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.03920124 68.16420385 -0.79778960 {Pose: {Head: [102.14500353301814f, 2.371759603161996f, -141.2737221766492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.42249995 67.81906695 0.64076735 {Pose: {Head: [-103.02121606692413f, 19.20072724704303f, 147.18390969157915f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31468069 68.47144946 -0.61813030 {Pose: {Head: [-100.46115738157124f, 152.44782390567096f, 76.25844728588567f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.46384339 67.50096312 -0.34332827 {Pose: {Head: [-5.708936774700035f, 177.44090640827469f, -40.76476629436363f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69744015 68.38919504 0.23493880 {Pose: {Head: [-139.11989446488835f, -36.64086809346494f, 51.78672436978897f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49266120 67.71708678 0.53509187 {Pose: {Head: [156.18460952796107f, -165.39583352706848f, 138.43331219423905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34097187 67.64514727 -0.59825040 {Pose: {Head: [-34.961347417750986f, 155.84220514603976f, 9.38699941535921f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.67044802 67.64316944 0.15169045 {Pose: {Head: [-84.51176389296266f, 78.80121992268025f, -46.35413550080321f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.62746508 68.40577937 0.36985877 {Pose: {Head: [77.99298681623057f, 122.62174498779126f, 172.57587695715756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68634712 67.72335903 -0.24951891 {Pose: {Head: [-17.7462084911455f, 120.7529056769761f, -96.91922446754008f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.00543424 67.25863979 -0.04612900 {Pose: {Head: [-168.58533804159157f, -66.13968618105746f, -172.933060178777f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.59887370 68.39976228 0.41946765 {Pose: {Head: [-40.727553689378254f, 53.14238127413285f, -173.8850681379028f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.09595482 67.49529833 0.56340358 {Pose: {Head: [-111.13844341504935f, 22.651849791978258f, -146.27359121739318f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67718050 67.66284060 -0.17334242 {Pose: {Head: [-173.30007738871126f, 14.650371597475962f, 117.24457596075922f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.05499996 67.43562028 0.50234000 {Pose: {Head: [-96.45659705183886f, 46.036822555463175f, -129.15148615616388f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.26289184 67.57795267 -0.58689899 {Pose: {Head: [151.32123901591726f, 12.25691081639562f, 138.14494353555796f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28111247 67.75083491 -0.68716032 {Pose: {Head: [-39.84874095387863f, 172.4882491458297f, 29.582059750494665f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48015066 68.48596458 0.48834594 {Pose: {Head: [127.64691532677503f, -129.64495562202544f, 115.60144176296095f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.79361201 67.96565655 0.09565554 {Pose: {Head: [-95.5249727301592f, -82.46306432993102f, -161.68435554427512f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66673642 68.20606641 -0.42801856 {Pose: {Head: [134.0130622155153f, 54.270252663820244f, 17.108418242897844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.04923862 68.86608613 -0.01317382 {Pose: {Head: [26.682946577844486f, 82.42168056254502f, -169.42892877225788f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62898771 68.51614793 0.21662565 {Pose: {Head: [-120.28086984656602f, 65.34631431745163f, 91.6883209572468f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.09283239 67.31935360 -0.29574352 {Pose: {Head: [-138.8055848599888f, 174.92310939403717f, 174.89010793861908f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.24885398 68.82049597 0.10891493 {Pose: {Head: [-101.06807244767067f, 80.95625673707639f, 40.88492867149129f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.15410551 67.54271189 0.59533224 {Pose: {Head: [-37.094896845498276f, 27.736598162982197f, -18.754413892440002f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.04270453 68.36257326 0.74597655 {Pose: {Head: [115.82049752945909f, 158.75062553625236f, -81.2503506384979f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44156832 68.24363671 -0.64850256 {Pose: {Head: [132.7121576045243f, 28.841340764395873f, 19.256124443853075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.29231379 67.41640673 0.38139846 {Pose: {Head: [70.44033058504517f, 127.62581794244183f, 68.58919813126869f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.59925765 68.45957283 -0.36272868 {Pose: {Head: [-113.58437331093485f, -128.1246928145533f, -96.48297173089288f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32551220 68.46873381 -0.61430005 {Pose: {Head: [-48.31824624436042f, 145.44269772067744f, 164.3364870800873f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.70203589 68.41224232 0.18213892 {Pose: {Head: [49.37185864873701f, -117.06166422425126f, 89.44561149367294f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.30569240 68.78201149 0.19288346 {Pose: {Head: [103.93982023571888f, 103.92801410975036f, -118.8045288595406f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.56382891 67.53481640 -0.22802550 {Pose: {Head: [75.34768625512314f, 69.97474822411385f, 101.00818217362468f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.11964791 67.50650361 -0.57000092 {Pose: {Head: [144.89887762739605f, -29.792488112096393f, -132.83864049102436f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35770334 67.38040429 0.23482424 {Pose: {Head: [-130.35697145932704f, -54.42632779581542f, 127.09518127882932f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.18868261 68.84501734 0.02035037 {Pose: {Head: [17.365524973887414f, -48.61935328669738f, -164.79907862545602f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.12186542 68.76576327 -0.37271739 {Pose: {Head: [-14.63090799639807f, 145.46552491628609f, 168.7699377121196f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.24970700 67.46422018 -0.47755244 {Pose: {Head: [60.00688263485206f, 23.915744405904757f, -3.587734655033845f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.30239863 67.66451846 -0.63127998 {Pose: {Head: [-44.35607470168341f, 150.8013026401733f, -82.12429652585703f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.21009483 67.45034047 -0.47902977 {Pose: {Head: [128.06494301854994f, -51.14375081774481f, -94.31954680548417f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.25416336 67.82997848 0.72779350 {Pose: {Head: [84.3162324940645f, -177.80903594553322f, 42.90988779206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.27565350 68.79719380 -0.18052375 {Pose: {Head: [-35.69638360126311f, 105.83412263062324f, 146.35766289769208f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47566278 67.48213831 -0.29201693 {Pose: {Head: [173.18241887197655f, 35.27557441686271f, -156.64132610264247f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19644693 67.32384188 -0.25326162 {Pose: {Head: [-79.13907886099109f, 108.55347911407941f, -114.05763998310528f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.14772247 68.67281904 -0.50402123 {Pose: {Head: [-96.56789964876039f, 134.20131143495604f, 69.23037534461105f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.53555505 68.39275468 -0.50245526 {Pose: {Head: [106.95180276605731f, 51.34293721375307f, -151.67374793503274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.05200968 67.91934987 -0.79066535 {Pose: {Head: [98.86190977438049f, -2.1351530525519102f, 8.807419796851184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.48520720 68.20168118 0.62733662 {Pose: {Head: [139.44654918465108f, 153.97971733011974f, -111.34588812756073f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51182326 68.46831675 0.47084856 {Pose: {Head: [55.73065896382594f, -172.18552669366426f, -134.08789915672173f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.59988275 67.89053815 -0.50884031 {Pose: {Head: [83.42114721087155f, 45.25816867713747f, 129.36801544231872f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35743054 67.37576200 0.22132101 {Pose: {Head: [52.07051198131322f, -120.75520984133219f, -56.20832234961536f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.46947462 68.57206135 -0.41023099 {Pose: {Head: [-110.11136352615368f, -131.4424163993627f, 0.5432835577038375f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69453135 67.65509990 0.00013178 {Pose: {Head: [-152.88957479023125f, 89.92866718126096f, -112.84132777040888f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.67664135 68.49676053 -0.04385133 {Pose: {Head: [55.063013727878406f, 84.61956569700828f, 158.07875978845473f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.13449346 68.85512772 0.04473779 {Pose: {Head: [169.80205708753215f, 96.42795476298407f, -39.22936011001429f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.13116202 68.85680285 0.01510490 {Pose: {Head: [-147.0999075592064f, -85.33768507951598f, -22.677464992376084f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.73546731 67.97421011 0.31566024 {Pose: {Head: [118.25644845846041f, -113.36515534690605f, 177.38186269951154f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.01405220 68.86434441 -0.07208834 {Pose: {Head: [11.818772001869515f, 131.67806604590922f, 175.20911716059726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77411102 68.02102573 -0.21767101 {Pose: {Head: [84.95455518869922f, -72.70318721023119f, 22.55401429593487f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.75930845 68.19699671 0.23175413 {Pose: {Head: [159.08259675959428f, 116.32192461632486f, -117.36497178770772f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.52807789 67.46318044 -0.10148131 {Pose: {Head: [-123.26158744184347f, -102.03699023856375f, -175.1861476601485f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.75741841 68.25198035 -0.19688373 {Pose: {Head: [4.912807689403564f, 165.28315803383433f, 100.24744952292575f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.00323783 68.82661098 -0.25391452 {Pose: {Head: [154.6634189978691f, 63.46168629556742f, -41.46803001240156f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.67039514 67.79843497 0.35942826 {Pose: {Head: [170.33873518226451f, 156.1309809646004f, -124.25130243623421f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.20043981 67.78206381 -0.72768681 {Pose: {Head: [-48.58671061042522f, 166.8371108158421f, -65.13909724355766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.00515883 68.06199162 -0.80518432 {Pose: {Head: [109.20454859446808f, -0.11011606773206672f, -101.74063066142021f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.29055847 68.71519713 -0.37136355 {Pose: {Head: [96.94509958198459f, 61.79623548160898f, -128.24226219757745f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.18095633 68.30404720 -0.74649743 {Pose: {Head: [121.43507548722735f, -18.66939786104883f, 19.85237354548686f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66242929 68.51728581 0.05201891 {Pose: {Head: [-164.68197032104953f, -150.9375814127861f, 57.590558891175405f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.75939715 67.79582534 0.02343614 {Pose: {Head: [-155.23498483294122f, -71.29929343741567f, -114.28439627918156f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.49421790 68.19928272 0.62079611 {Pose: {Head: [88.68163475290862f, 145.60320302468241f, 161.4480972914255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.60099062 68.53314222 0.25623200 {Pose: {Head: [-11.908304817941204f, -52.436022152613376f, 153.94211406867805f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35750101 68.58494416 -0.49758797 {Pose: {Head: [70.33112623191764f, -37.08672079688997f, 177.9296710658823f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.29226769 67.94182543 0.74051732 {Pose: {Head: [-58.94492047317686f, 20.19827192154107f, 8.070300564145922f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.14707159 68.18323891 -0.78239422 {Pose: {Head: [-73.7539564853687f, 166.7301798302991f, 25.24009428153119f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.26913216 67.46013445 -0.46159753 {Pose: {Head: [79.6915143373269f, 48.61937086758821f, 76.64866413014494f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.25484678 68.49337585 0.63067248 {Pose: {Head: [-88.39520933182406f, -34.580307439466125f, -29.677561260195134f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.18715363 68.46982663 -0.66888504 {Pose: {Head: [-43.45361319923156f, -158.78643118228774f, -119.92990215473961f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.36869248 68.38463666 0.63925150 {Pose: {Head: [107.778492891018f, 142.58781851905314f, -141.78050418065024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.58722755 67.98746490 0.54578585 {Pose: {Head: [78.39535999518236f, -142.38374426192647f, 37.45079538472075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.32568355 68.50063597 -0.59187477 {Pose: {Head: [-27.87785385198645f, -176.4173821369669f, 147.26737158552598f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.63629328 67.60612840 -0.18762858 {Pose: {Head: [-38.66309634669907f, -105.909478614473f, 111.5598697342407f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.54219753 68.11397414 -0.59306063 {Pose: {Head: [75.98231668683302f, -27.86901356677403f, 60.267790005599046f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.66671962 68.23073075 0.41896542 {Pose: {Head: [62.045591322796f, -140.38429234977912f, 73.87412945493288f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.11404540 67.56131109 0.61979996 {Pose: {Head: [-43.17421865797167f, 30.004252099716144f, -31.312220295501376f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.62020079 68.18185914 0.49945273 {Pose: {Head: [67.69549226854649f, -146.39345769618788f, 69.18931576155293f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.36184352 68.18779997 -0.70832044 {Pose: {Head: [-44.90259176091307f, 167.15002343152568f, 84.14204795162875f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.24909348 68.54178972 0.59714526 {Pose: {Head: [-70.39721472606672f, 42.1312199097173f, 62.60732947843677f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.63900677 68.53469698 0.13057189 {Pose: {Head: [-173.12443788773402f, 137.62031272793138f, 44.91311875617024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.01368125 68.86223967 0.09261716 {Pose: {Head: [37.0083858141145f, 112.55287880196923f, -164.79034075107108f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.61771663 68.15616648 -0.50793840 {Pose: {Head: [153.7810943208088f, 28.323464074767834f, -107.36553493142574f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.73469465 68.38434992 -0.07060494 {Pose: {Head: [-142.89707815466252f, -106.90916501287255f, -83.17459030627079f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.14878362 67.58231966 -0.62899836 {Pose: {Head: [-76.87021162129656f, 141.8234147866397f, -117.54394801489924f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72397402 67.93345902 0.32796143 {Pose: {Head: [-33.00736602668346f, 59.13906384272812f, 31.621084275237948f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.49126292 68.11386833 0.63590148 {Pose: {Head: [144.28103778806639f, 163.91938373225838f, -105.81521207625208f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.42594100 68.31445036 -0.63517237 {Pose: {Head: [-33.53693999018325f, 170.58125579696656f, 108.31187606091954f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23333722 68.57571577 -0.57490171 {Pose: {Head: [-26.003507820278553f, 179.99976941876255f, 155.5505066382245f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.27290083 68.77219836 0.26495666 {Pose: {Head: [167.42391157545939f, -128.21869923365804f, 5.231452816383727f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28830313 67.33605735 -0.19367765 {Pose: {Head: [140.04260743007697f, -73.79225509290077f, -99.86510322266302f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.17379473 68.73910795 0.40043193 {Pose: {Head: [82.32887315521472f, -124.00584613651222f, 107.42189953075642f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61388988 68.33768851 0.44244678 {Pose: {Head: [-28.970711092004258f, -42.83113470383754f, -76.57931027264159f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69111216 68.07183865 -0.41306830 {Pose: {Head: [-18.95118626249312f, 145.48083423719754f, -115.04405308383616f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.60959989 68.09615944 -0.52497968 {Pose: {Head: [152.22558173126419f, -27.536574034343637f, -60.20352603013337f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.67051810 68.00290542 -0.44181741 {Pose: {Head: [64.90635073522074f, 39.529992949029925f, 117.71469149701727f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47582063 68.40361728 -0.55279507 {Pose: {Head: [72.84271708929192f, 31.08333324067037f, 160.33164697720662f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80205477 67.99688528 -0.02741373 {Pose: {Head: [-14.29458319820145f, -93.50406909313803f, -51.52154764899395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.03093031 68.78666754 -0.35067556 {Pose: {Head: [45.41373720881846f, -3.04482334902068f, -179.02894866883895f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.08078041 67.93217227 0.79046687 {Pose: {Head: [98.5801820342293f, -179.8294019029426f, 30.9121658669172f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40361015 68.17129803 -0.68819365 {Pose: {Head: [-50.32627537115536f, 155.53528603037648f, 56.577911687437215f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61650594 68.03011929 -0.51693382 {Pose: {Head: [-22.047190990928183f, -165.2156563522128f, -74.22630192922924f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19111303 67.28101381 0.03322349 {Pose: {Head: [49.488854235162435f, 94.74329698533917f, 16.105316801852183f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.48949859 68.66003476 -0.22735875 {Pose: {Head: [176.1492794915409f, 44.702686187918296f, -56.26009406763726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72039336 67.70284248 -0.00534141 {Pose: {Head: [22.66455220969049f, -82.97211937619166f, 60.38461479099505f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.06204045 68.86447073 -0.03664137 {Pose: {Head: [-163.56638873686504f, 33.35439715186616f, 2.7053353641059807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.27788910 68.67407361 -0.44396399 {Pose: {Head: [-102.77760911226832f, 130.73441126317914f, 25.688718646844297f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67559241 68.12123942 -0.43413503 {Pose: {Head: [-79.6816904645303f, -123.11004595095717f, 6.019910451756409f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71486574 67.85897675 -0.30966743 {Pose: {Head: [-33.78983419097623f, 118.64465253542772f, -123.81396872727763f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40139004 67.38198835 -0.15536597 {Pose: {Head: [-173.28078890496568f, 29.72270774415903f, 143.02021460836806f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.74091944 68.37772006 -0.00483189 {Pose: {Head: [19.99747731044172f, -38.75178605145423f, 112.7710864277672f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.32404160 68.26104351 -0.70987758 {Pose: {Head: [121.7032121334138f, -25.60369862175447f, 5.020270360190908f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62787032 67.55838948 -0.00032096 {Pose: {Head: [14.104616777264054f, -90.24037793876795f, -45.78745007018108f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.74723222 67.76266864 -0.00968631 {Pose: {Head: [46.384996233745206f, -88.47263193564827f, 41.31638346432223f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77660912 68.26987435 -0.04714663 {Pose: {Head: [62.20426534686432f, 85.04196661988027f, -62.40995114203264f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.66717105 67.95744977 -0.43840152 {Pose: {Head: [-127.45317398474235f, -179.3616970710527f, -99.36245919080434f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.19862655 67.28381190 0.05040835 {Pose: {Head: [-131.94832825494979f, -82.45983271210456f, 166.02283423298738f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.05458654 67.54793637 -0.61692240 {Pose: {Head: [148.85986892125757f, 8.053831600033394f, 164.23228944163247f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.06603271 68.29257541 0.76880013 {Pose: {Head: [104.99963094725909f, 163.29963150655067f, -121.51527315865383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.80467419 68.09076413 -0.00701793 {Pose: {Head: [37.625439196173076f, -88.38972818142244f, 73.94951382592464f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.07423100 68.78954245 0.33800547 {Pose: {Head: [-135.2829873846266f, 9.121477187353834f, -1.5710836994461541f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34189805 68.25826986 0.70223112 {Pose: {Head: [-41.87024385124259f, -6.750429408120757f, 131.97482147348225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.22822141 67.40966510 0.41239574 {Pose: {Head: [167.62202681261024f, -165.5271918637375f, 169.58500286790522f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.02551657 68.86401091 0.07264867 {Pose: {Head: [136.5139708257621f, 95.80958465128074f, -64.74665692089297f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32437778 67.43939767 -0.39353678 {Pose: {Head: [-107.7363259258983f, -127.90456065072875f, 106.48559189622787f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49332658 67.42933693 0.06389104 {Pose: {Head: [-17.552778592133762f, 82.44286493304195f, -74.79296988993873f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.36440193 68.28855442 -0.68151250 {Pose: {Head: [90.42946193722257f, -26.382933347398822f, -173.84253475248678f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.73003506 68.40200139 -0.01167357 {Pose: {Head: [-159.61214720804585f, -177.88058475707805f, 65.02856404004869f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72889734 68.17017971 -0.32474976 {Pose: {Head: [171.56908042173248f, -30.74675170792333f, 96.79631716260555f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.12792066 67.99621600 -0.79220666 {Pose: {Head: [119.81232333789929f, 1.0362095350210865f, -123.09938158425561f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.31371001 67.32859594 -0.10639319 {Pose: {Head: [35.54756041584231f, -61.33846789299883f, 9.029504550294343f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.29429909 68.79676513 -0.15030445 {Pose: {Head: [8.59467008700567f, -169.00637754895007f, -156.0433487393134f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.80245648 68.02784342 -0.05666719 {Pose: {Head: [15.12047523402295f, 155.4877227526228f, 85.6834954260753f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.54549618 67.63569991 -0.41063885 {Pose: {Head: [163.65344448216007f, 29.580908831991124f, 108.37370365343453f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.07892411 68.75884266 0.39651803 {Pose: {Head: [165.22122905645787f, -150.818045476295f, 11.953922749044343f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.58377388 68.61083429 0.08298324 {Pose: {Head: [-169.70149301624372f, -129.8356822219409f, 53.92757132844292f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69126426 68.43029477 0.18769492 {Pose: {Head: [-54.86765970428357f, 75.99598143410417f, 44.04438498000329f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23989625 67.29387483 -0.00371402 {Pose: {Head: [-160.7423339000352f, 27.861156267151404f, -162.8059918506742f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34368840 67.60508892 0.56657042 {Pose: {Head: [151.74425641150046f, 161.74003252049658f, 124.00918319580613f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74526657 68.36576375 0.03094338 {Pose: {Head: [-158.17444189801674f, 13.910520956774278f, 68.40335881466885f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.05961110 68.21583101 0.78821620 {Pose: {Head: [-80.94368232956147f, -5.390190536993202f, -48.12202283274369f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34964561 68.09930919 0.72439056 {Pose: {Head: [130.08331732575263f, 163.86943273651406f, -120.5667118058341f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69778582 68.43341160 -0.15449332 {Pose: {Head: [-123.40994032528988f, 108.57651573341273f, -26.436003634435842f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77616511 67.94334797 0.17809876 {Pose: {Head: [165.8669186689252f, 113.50017286528248f, 67.28745997906736f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.21300080 68.21210136 -0.76197031 {Pose: {Head: [101.57043669365109f, -17.141808076852854f, 60.53668214448371f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.02516729 68.74140718 0.43220401 {Pose: {Head: [163.40262689631547f, 155.48294903473467f, -14.744100127193045f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.73109187 68.33312605 -0.20153133 {Pose: {Head: [-136.10423256976563f, 127.39382652198954f, 89.45431090615571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.20189710 67.66281469 -0.66920690 {Pose: {Head: [-36.83608518986403f, 176.29021943549506f, -32.36087061234822f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69550080 68.31264881 -0.31945714 {Pose: {Head: [68.0977312513163f, -58.03568839104355f, -153.6219529218289f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62970637 67.64648810 0.28062902 {Pose: {Head: [45.74740910066481f, 142.15259994628235f, -39.75635214326952f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.61360055 67.55583695 0.12302675 {Pose: {Head: [106.38260225528578f, 98.80226192394672f, 137.24104255310087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19377028 67.39793114 0.41127846 {Pose: {Head: [50.8313161775104f, 169.7008006628943f, -10.057388672171266f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21753688 68.79944031 -0.24071840 {Pose: {Head: [153.1793871780273f, 65.6078955680593f, -27.25365470090593f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78945506 67.90426522 -0.00843339 {Pose: {Head: [113.69313556486324f, 89.3983262307364f, 15.470685835034992f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.27207992 67.39502977 0.35889367 {Pose: {Head: [130.87896446958908f, -118.5855885534605f, -136.14326101046507f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60653329 67.53294079 0.00575081 {Pose: {Head: [-13.853061947307788f, 89.25679903512095f, -82.28350127492288f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.16095862 67.99749730 0.78626689 {Pose: {Head: [-58.20712533562791f, 2.3136275199893763f, -78.55347439702341f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.54748364 67.49611882 -0.16680131 {Pose: {Head: [2.556650845136623f, 135.1158214892497f, -56.20275989539917f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61532548 67.54382341 0.02641594 {Pose: {Head: [17.28952808391843f, -33.96894128024157f, -48.60427586133708f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64651452 67.65014435 -0.24562256 {Pose: {Head: [171.83384308086053f, 49.02438548260398f, 100.88905524557663f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.02913131 67.57281048 0.63851719 {Pose: {Head: [134.58381372951513f, 151.06424392833773f, 137.38352535811657f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28871482 68.76618285 0.26424015 {Pose: {Head: [-179.71186454920985f, 173.96622695609148f, -24.41233273975021f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68782993 67.74250879 -0.26989679 {Pose: {Head: [68.41912424628042f, -63.57262587652654f, -110.763508935881f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.13841216 68.85019434 -0.09342569 {Pose: {Head: [-42.546529387147146f, -97.54380574706468f, -128.06949376138664f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.09415731 68.79871290 0.31220765 {Pose: {Head: [155.89672306879424f, -124.16889357522817f, 31.00494693019649f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.08632367 67.27917341 0.16521601 {Pose: {Head: [-148.54851769372766f, -5.447158217273396f, 172.56579356005346f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75356321 68.31469429 0.12995843 {Pose: {Head: [100.76588293043686f, -99.39949107006561f, 170.40464269609183f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48739882 68.21053950 -0.62359872 {Pose: {Head: [-97.06047626675512f, -150.02804537810806f, 28.19397641622488f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.08324668 68.30417900 0.76355086 {Pose: {Head: [91.120916867572f, -178.3243847918324f, 155.98057434352782f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.79680404 67.94869813 0.02238542 {Pose: {Head: [11.982968493476937f, 77.82295057511118f, 74.46668199565914f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50495034 68.67088627 -0.15244660 {Pose: {Head: [30.789553084661378f, 13.611517276015103f, -137.63191263505388f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33964986 67.34289142 -0.12308584 {Pose: {Head: [-25.540381423526213f, -102.46344289721445f, 19.14685929810748f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40784926 68.65172747 -0.36717655 {Pose: {Head: [-132.17730345732724f, -164.34785743514712f, -42.94406673022123f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69568828 68.28548197 -0.33859344 {Pose: {Head: [-94.30932975395416f, -117.37584579049975f, -135.74471250407638f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55050418 67.84018395 -0.54393877 {Pose: {Head: [-112.68457417128644f, 155.8508976896087f, -87.73752460793665f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.03215168 68.86158560 -0.09368638 {Pose: {Head: [-167.13772844786314f, 3.527306986704781f, -2.717827026199018f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.67089230 67.64984178 0.16722853 {Pose: {Head: [66.71989893479467f, 106.45262268472469f, 104.37227653679625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.07264356 68.82246804 0.25596905 {Pose: {Head: [-57.4315736489094f, -70.95733801686283f, -98.2771308482211f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23743942 68.67821518 0.46137403 {Pose: {Head: [89.3758298625533f, -127.6234800759874f, 135.98196845340846f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40915757 68.70989333 -0.24863752 {Pose: {Head: [79.23882686480391f, 69.04036414793318f, -154.34813006595414f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79827109 68.04534051 -0.10400708 {Pose: {Head: [1.5203247169098069f, 114.6571286082569f, -105.25363243326217f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78636161 68.23073524 -0.04099976 {Pose: {Head: [-15.403065108323721f, -95.09822024733619f, -67.22281176709404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17875783 68.76060245 -0.35923148 {Pose: {Head: [85.26132269216727f, -60.69297064826233f, 131.73220208450067f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.25589156 67.30033409 0.04439923 {Pose: {Head: [66.15096259753412f, 94.35283065350411f, 65.07083019098962f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21692892 67.58137941 0.60812291 {Pose: {Head: [131.48637875537275f, -144.50379257510147f, -149.00584415471252f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80025551 68.01757385 -0.07695073 {Pose: {Head: [-17.61265101390921f, -99.10120138147148f, -49.96642490515842f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72142197 67.88601868 0.31105199 {Pose: {Head: [-100.92292643798409f, -63.368763562602446f, 47.10779589894417f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.43327124 67.67077845 -0.55423723 {Pose: {Head: [-53.06226268118814f, -136.1581946313843f, 113.56483334792053f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22960080 68.55981441 0.59017836 {Pose: {Head: [-111.31815446356714f, 14.224830970088156f, -8.931145050003524f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.09702413 68.66315717 0.52739543 {Pose: {Head: [-84.89098457793997f, 47.438938734328254f, 61.54483987643143f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.74962919 68.27240834 -0.20577469 {Pose: {Head: [116.2042313753514f, 75.09087480337662f, -157.4798498656972f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74352125 68.32686726 -0.16010859 {Pose: {Head: [-1.6593278671216094f, -123.33042851779571f, -91.6033347381752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.65403899 68.05805097 -0.46964015 {Pose: {Head: [-121.60817042440384f, -158.45251009595378f, -106.86092692443047f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21499092 67.29580433 0.11960483 {Pose: {Head: [-151.4421050235284f, -18.304395237291544f, 161.48771182818854f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74566894 68.32966441 -0.14474001 {Pose: {Head: [65.51015206798915f, -75.51736247586572f, -154.7406273834989f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28049881 68.62130742 0.50734933 {Pose: {Head: [58.63694910518113f, 178.1761718041233f, -151.86462571896527f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.02057321 67.70749855 0.72242603 {Pose: {Head: [135.44881049562866f, 175.79862915100688f, 168.1004368941238f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.18144784 68.17925286 0.77575390 {Pose: {Head: [-70.82961796748796f, 15.53847919618029f, 145.7992546070816f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.58759093 68.60961443 -0.06124831 {Pose: {Head: [3.715564574645471f, -106.18030006452538f, 148.20035760268456f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34784743 67.57870054 -0.54156154 {Pose: {Head: [147.47760243407546f, -31.50464373255598f, -110.4320678533593f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48589068 67.91884680 -0.62579762 {Pose: {Head: [71.48352734535965f, -9.156202400533644f, -85.01244443026364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.14116931 67.31366619 -0.26013038 {Pose: {Head: [-45.674054304848475f, -110.8421878187186f, 74.3994203903209f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77359526 67.90516935 0.15857523 {Pose: {Head: [91.38420312098846f, 101.96283517125906f, -7.052687623709009f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50706781 67.90414772 0.60510780 {Pose: {Head: [-88.76975547085108f, 37.65994712663083f, 168.87951279891257f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52575419 68.07946978 -0.60962547 {Pose: {Head: [72.71729641733033f, 18.913617183456026f, -68.45196720593678f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72007874 67.76701471 0.20621278 {Pose: {Head: [-1.008435921476005f, 43.19143228113535f, -82.09077252868325f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.15652079 67.73099494 0.71690606 {Pose: {Head: [135.9769778021793f, -173.8170846488573f, 166.9564788445864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72743226 68.37507035 0.14659719 {Pose: {Head: [-15.839215640380358f, -71.68003214703867f, 147.25392651815469f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.27613509 67.32942477 -0.18627609 {Pose: {Head: [-141.6075147895946f, -135.76955468921568f, -172.7443029319583f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76396390 68.19987898 0.21409071 {Pose: {Head: [-176.43609107562136f, 164.80681167649672f, -84.10135894816253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.79596836 68.14225778 0.09176999 {Pose: {Head: [-80.496140908241f, 83.35319743661083f, -4.397299515367816f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.12581773 67.31567345 -0.27343859 {Pose: {Head: [-7.544700373283072f, 138.1957815964146f, -9.273185385833562f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.57270266 68.22429261 -0.54238683 {Pose: {Head: [157.2105985170628f, 0.13372040613090166f, -74.34650563710491f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.73241847 68.16377767 -0.31883331 {Pose: {Head: [140.42274683660523f, -62.52881450617247f, -26.093081351338263f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.15808979 67.32418743 -0.27973348 {Pose: {Head: [-37.618244998358634f, -114.41982444982571f, 66.7699716223772f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68688807 68.37467882 0.28120779 {Pose: {Head: [-129.94754931430634f, -46.51310149607522f, 42.421994248908696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74076448 67.82548440 -0.20842323 {Pose: {Head: [-3.7579790826088204f, -130.84514047870823f, -54.2003643031399f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21039371 68.80753388 0.22137675 {Pose: {Head: [-7.362041262070029f, -52.60646466525678f, -142.26197269815125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77773107 68.26957890 0.02452292 {Pose: {Head: [-90.70138696865077f, -88.13963659592953f, -144.8225243084449f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74726517 68.33180042 -0.13198755 {Pose: {Head: [-173.51624840481125f, -43.55643453795479f, 79.27245713855707f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76838275 67.98364768 -0.22741795 {Pose: {Head: [-83.39641784721016f, -106.84662372169635f, -172.34628267520074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.17827631 67.69304019 0.69286771 {Pose: {Head: [-58.94708330885502f, 28.585104924420808f, -41.21180371739875f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.24425502 67.29609543 0.03622391 {Pose: {Head: [16.916433909434733f, -12.407409669090155f, -17.109555322371463f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41163906 68.67272787 -0.32637998 {Pose: {Head: [175.6429754399408f, -0.5573390041968462f, 34.24940130942552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.31681033 68.29550743 -0.70262893 {Pose: {Head: [109.50644046767358f, -29.236229910904715f, 36.43640415507214f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34116218 68.21920839 -0.71231980 {Pose: {Head: [-66.36185790035992f, 152.48597950544755f, 33.45181691063134f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.02602529 68.76913822 -0.38514123 {Pose: {Head: [106.0635863083599f, 61.36636884439178f, -91.86902198083244f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70919734 67.68281112 -0.03498791 {Pose: {Head: [-115.42945623477547f, -93.52224171613436f, 73.20385080900824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53743641 67.94368555 -0.58770221 {Pose: {Head: [151.76695569422384f, 9.796549645332595f, 91.84206934724067f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17782165 68.16939003 0.77801198 {Pose: {Head: [110.26606485915164f, -165.08468724142028f, 146.2351883289273f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68283024 68.35311599 0.31246418 {Pose: {Head: [96.7281459112962f, -113.45267980609694f, 170.88550740716195f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.02271137 67.85671556 -0.77812956 {Pose: {Head: [-76.24440386782747f, 166.25278722242308f, -119.44535845810472f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70965278 68.39432460 0.18610218 {Pose: {Head: [6.087899887523766f, 7.105915601630537f, -116.75720979779369f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40541392 67.37185010 -0.08361174 {Pose: {Head: [130.41129647917256f, 83.62014940407505f, 141.38646786509156f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.38846708 68.67188550 0.35509336 {Pose: {Head: [-134.2420936535379f, -2.798884101870618f, -33.89291772382091f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.51567608 68.16633119 0.60962769 {Pose: {Head: [124.67460058271139f, -141.6518200245171f, -12.145501864062018f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.54159893 68.20442401 0.57868544 {Pose: {Head: [-31.585649509016775f, 22.643012903824786f, 79.14356558430357f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.56573917 67.50229608 -0.12024731 {Pose: {Head: [-61.18580167827244f, -98.7027956103609f, 125.91813880993799f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.44912320 67.39428008 0.01091537 {Pose: {Head: [113.55164872090677f, 90.77862219010397f, 127.90121017420125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.12168296 67.26679213 -0.01977129 {Pose: {Head: [-157.609688003829f, 119.78041645528461f, 173.7654248658149f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.43947519 67.40517926 -0.15211723 {Pose: {Head: [4.990010684236452f, -138.69022163371142f, 43.49989414049045f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60436283 67.57205771 0.20630217 {Pose: {Head: [-80.45070202229472f, 74.91983010526613f, -151.29718376479224f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48073559 68.70843703 0.00270290 {Pose: {Head: [18.58145022570934f, 78.62429312572246f, -144.29770115084148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47683577 67.42132056 -0.09932387 {Pose: {Head: [-19.697762223335193f, 101.24138752940914f, -2.0739605410851425f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.51115118 68.63341267 -0.24724858 {Pose: {Head: [-7.7680308547410535f, -131.98528941168595f, 159.17092344077184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64515616 67.59187595 0.10312710 {Pose: {Head: [-174.87956363314234f, 120.91333910246728f, 113.65532468869559f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78833703 67.94356397 -0.11281668 {Pose: {Head: [93.12598704532884f, -81.60045176069322f, -154.82150687636988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31695259 67.32414924 -0.05222893 {Pose: {Head: [-131.53233450422758f, 97.71060142173481f, -174.54107784361625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.13162603 67.74208610 0.72688251 {Pose: {Head: [-81.50248279619723f, -23.100907770670887f, 138.81312302081702f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77469276 68.26738155 -0.07888809 {Pose: {Head: [9.46060375458707f, -123.97943680488127f, -96.41471108419397f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.35349719 67.39440326 0.27755205 {Pose: {Head: [158.48164224491777f, -121.6426371159421f, -115.54029265359577f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19124092 68.84465557 0.00287064 {Pose: {Head: [-135.30950086405818f, 89.51906689422067f, 38.8726658718052f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60754317 68.58996586 -0.03193297 {Pose: {Head: [24.81990521778665f, -64.38483286442786f, -135.71286090496025f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.70801964 68.20904249 -0.35437571 {Pose: {Head: [172.84265258586134f, -11.755138110379082f, -72.45237728476246f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55234575 68.29809954 0.53642864 {Pose: {Head: [111.79382610438346f, -131.81386313015662f, 20.099856872996337f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21453956 67.33979239 0.28286949 {Pose: {Head: [-59.13841825146799f, -69.0069973463481f, 61.3803710315452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.16057844 67.28008493 0.10193075 {Pose: {Head: [27.15590548276241f, 163.18543337451916f, 13.808186589679838f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41989367 68.02195029 0.68585252 {Pose: {Head: [79.22793839082401f, 170.69192856302456f, -69.02933386807274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38755221 67.41097157 -0.27140864 {Pose: {Head: [-138.02382951833104f, 152.1043075637332f, 160.17954824786148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.39147965 68.73492371 -0.20721653 {Pose: {Head: [-7.803923382409774f, -124.05253915572115f, -126.58552278308206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.39442797 67.67058027 -0.58238660 {Pose: {Head: [-72.50335811969966f, 136.36485656653497f, -47.800996432114374f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40706479 68.72570566 -0.20689409 {Pose: {Head: [4.449816575593273f, -170.3711210837964f, 151.04439788656993f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76643637 67.98010066 -0.23266778 {Pose: {Head: [-127.15208036267852f, -121.76464625151888f, 66.96147087244358f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23256636 67.29326802 -0.05043522 {Pose: {Head: [-88.03761951385023f, -93.76765938488852f, 90.80802139300019f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78604523 68.02307433 -0.17007989 {Pose: {Head: [-177.27367464955307f, 43.15290752414884f, 81.18234936050463f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65082658 67.77762540 0.37897214 {Pose: {Head: [135.20958901945275f, 121.4745184795594f, 53.023685448823024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.59877621 67.53903033 -0.12567901 {Pose: {Head: [-138.4847932897384f, -114.67102662575958f, 111.03903430628696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76736464 68.14203440 0.23059584 {Pose: {Head: [-143.56239504213994f, 9.523416148548376f, -81.20835611260328f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78409507 68.24377185 0.02615533 {Pose: {Head: [22.670602005712396f, 126.72403130082166f, -100.5204583470828f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21392887 67.29027980 -0.07911418 {Pose: {Head: [25.195231718206053f, -0.0271584698710825f, -15.487057908130712f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.18025759 68.40082787 0.70808905 {Pose: {Head: [108.43650801070686f, 151.58959918518744f, -120.40140364779764f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.52910623 67.45813891 -0.05606178 {Pose: {Head: [171.92823461101665f, -81.36502873211472f, -111.43761131222578f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49528146 68.51461843 -0.44568358 {Pose: {Head: [-90.88631824384012f, -126.20729671497453f, -17.59633894030623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.65930421 68.28040019 -0.40765933 {Pose: {Head: [-58.268522600276356f, -121.19362082607675f, -175.86680135236656f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.54173284 68.63551329 0.16288016 {Pose: {Head: [32.980473617299054f, -150.61507010121952f, 129.9277764649375f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.00963526 67.83063904 0.77103587 {Pose: {Head: [113.96135758434859f, 163.8231050665519f, 103.07562205922123f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50324507 67.47524580 -0.22411061 {Pose: {Head: [-6.669247261568304f, 129.03762474136093f, -61.53339197224682f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.25829959 68.74355174 -0.34321787 {Pose: {Head: [-8.110615536390071f, 156.63273430152844f, 147.48315134023252f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.78083108 68.25796708 0.02107359 {Pose: {Head: [17.841433968427765f, -29.02450814282028f, 104.8865099143015f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40919712 67.42607746 0.27545004 {Pose: {Head: [-91.66290000165019f, -68.47120559395982f, 79.91537534437306f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.22480794 67.52702124 -0.55773878 {Pose: {Head: [-24.930742218962145f, 171.29002253812962f, -31.234473890641514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.73995172 67.86144512 -0.24575811 {Pose: {Head: [-52.86184255209987f, 108.67315310823331f, 3.292547441168061f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.39225333 68.39269907 0.62084986 {Pose: {Head: [-40.44139598293815f, 27.082824642956282f, 91.8348802115085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.79244258 67.97903929 -0.11583487 {Pose: {Head: [8.795106238172004f, 140.39387323543292f, 77.0790556405939f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.30298021 68.49479354 -0.60800818 {Pose: {Head: [101.41361961656727f, -40.28905886994835f, 67.45176236511016f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.61687637 68.55077090 -0.17147515 {Pose: {Head: [155.60211752152375f, -72.13232750191507f, -9.096544839778371f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52526889 68.10694456 0.60865913 {Pose: {Head: [-82.60167620244049f, 39.35299931591315f, 156.39745358362205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37867733 67.39420500 -0.24152418 {Pose: {Head: [-125.19902281735222f, 121.31845422349751f, -178.42092750034377f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67903210 68.18730550 0.41435209 {Pose: {Head: [-70.63475242709173f, -59.02944645537194f, -10.191509632870483f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76339420 68.31856683 -0.00278194 {Pose: {Head: [173.8630128005546f, 89.54341345904585f, 45.76402647999616f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69737728 67.80987385 0.31335861 {Pose: {Head: [-83.24794182077525f, 66.47851640343187f, -174.00850024236328f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22898807 67.39374816 -0.38559576 {Pose: {Head: [167.44045370734014f, 25.740907600436447f, -176.34697746357963f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71301424 67.83650774 -0.29813896 {Pose: {Head: [-2.441371021485139f, -171.30271111860387f, -68.91806086731441f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23277138 68.82846602 0.08638402 {Pose: {Head: [31.77172572241215f, -120.46736009852357f, 152.52699929553563f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.36430417 67.82105780 0.67626681 {Pose: {Head: [-75.0907995827852f, -32.57964730315236f, 155.05048669000902f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52760012 67.77548629 -0.53629274 {Pose: {Head: [-89.37889579504862f, -134.760169961716f, 54.333839439154104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.54800551 68.52056576 -0.37177195 {Pose: {Head: [47.941295087612666f, 13.776531340668665f, 137.22388214361018f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.49455883 68.46364578 0.49279030 {Pose: {Head: [-88.20128228778047f, 50.01195376019432f, 16.36175771929402f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.59053456 68.60987291 0.00069719 {Pose: {Head: [19.48050419205127f, -49.31038944686294f, -132.770073221186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.57483717 67.60420965 0.32845219 {Pose: {Head: [118.27270009354457f, -114.37324859821508f, -48.117570341256894f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.18580114 67.47511061 -0.51845954 {Pose: {Head: [138.3596091166317f, -42.709988623727135f, -111.47534041259739f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37134554 68.77435096 0.06098652 {Pose: {Head: [31.54633050968845f, 111.38298167093728f, -141.2647073226249f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28877560 67.31351849 0.06311903 {Pose: {Head: [36.543115216569475f, 105.56439599751467f, 37.48218516618981f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.41322903 67.69400689 -0.58463942 {Pose: {Head: [-109.58036659612247f, -159.40718573636988f, -155.09996691965867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.05035902 68.47494034 -0.68971414 {Pose: {Head: [-42.74134421930992f, 165.34528874608296f, 161.23477645340623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.06964436 68.74649395 -0.41910690 {Pose: {Head: [-55.994637756738854f, 122.5136307939604f, 101.17698880239844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.15033667 67.47753670 -0.53250867 {Pose: {Head: [65.71333738148799f, 23.516279282385238f, 8.147489539100592f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.58026805 68.48159888 -0.36877334 {Pose: {Head: [166.1546468364835f, 33.70172491341761f, -74.25865892178416f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.19838633 68.69995211 0.45016257 {Pose: {Head: [-77.34175078603963f, 55.726405045013294f, 64.383648062724f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49962366 67.43167355 0.02797925 {Pose: {Head: [29.42866598605812f, -101.69334946564301f, -48.0508285867058f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34393013 67.33444751 0.00055005 {Pose: {Head: [-162.2114009075973f, 91.26872483234868f, 152.94650486428844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.27375993 68.81886052 -0.03637198 {Pose: {Head: [-157.8436600596181f, -174.79286145874465f, 19.661299924425403f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35504866 67.36419849 0.18618298 {Pose: {Head: [-147.0247250226717f, 4.875092917160808f, 154.2106472129829f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.01664241 68.86752891 0.00038465 {Pose: {Head: [-39.68257207812792f, 89.96814849866634f, 119.57652414137262f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.73148432 67.94972405 0.31711344 {Pose: {Head: [-12.96991352255447f, -42.90773794541249f, -57.7662958924887f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76740334 67.93786070 -0.20953717 {Pose: {Head: [-83.89214005727581f, -105.5195252713643f, 23.163390613132027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.70319896 68.30625845 -0.30731368 {Pose: {Head: [172.64479787364414f, -32.51734296422821f, -55.619521682689f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.05497991 67.77114352 -0.74862358 {Pose: {Head: [-81.88044011637946f, 161.5446452426738f, -111.8952596475324f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.54268429 67.55363292 -0.30805309 {Pose: {Head: [169.4539930391057f, -40.288911041839796f, -112.60779063949889f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.18558554 67.70893602 0.69921326 {Pose: {Head: [-46.78875143541633f, -18.5541063612238f, 8.301258270072633f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.38983306 67.64325341 0.56622534 {Pose: {Head: [92.73302997674597f, 137.27787580729193f, 108.89653045498032f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.25564788 68.75240047 -0.32715465 {Pose: {Head: [43.601976994979104f, -4.321110909815502f, 157.74199631522302f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.37622334 67.35659391 0.09220223 {Pose: {Head: [-179.04571086501875f, -111.03653337650968f, -134.50385872136923f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.14915262 67.54149784 0.59553245 {Pose: {Head: [130.82222549371966f, 142.5276906739367f, 106.63257330631828f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.20730976 67.29246603 0.11144056 {Pose: {Head: [-135.7135879676188f, 70.68061056740821f, -171.57613245351365f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.15765385 68.54414588 -0.62570853 {Pose: {Head: [88.7498345546492f, 33.76771818885498f, -142.48350224044495f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.75646984 68.33718749 -0.02547186 {Pose: {Head: [21.42016638563107f, 13.40147024746627f, 110.38891764624586f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.32093937 67.32640349 -0.05923260 {Pose: {Head: [14.001895160416709f, 139.4619236535544f, 19.940447571088445f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62564825 67.56570626 -0.10054301 {Pose: {Head: [11.282568225011094f, 150.1910909243311f, -55.68352729417277f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75093002 67.77692770 -0.05386301 {Pose: {Head: [-127.58158521154834f, 97.08147299650263f, 143.4835471119193f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41135668 68.74720051 0.10158516 {Pose: {Head: [38.59311334737236f, 112.75523140852064f, -131.35298062031111f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.68152371 67.71200414 -0.24703591 {Pose: {Head: [41.51425965362951f, -34.865706439113076f, 49.80555935374043f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64548834 68.54246621 0.03641281 {Pose: {Head: [28.679222204973016f, 106.57236153284623f, -117.88374930194219f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.38432469 67.36392959 0.11243919 {Pose: {Head: [60.90426776659861f, 102.2030505892404f, 69.5170287980299f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50843650 68.50370845 0.44178738 {Pose: {Head: [166.25578432981268f, 177.90359719694192f, 47.67282507794069f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.29182408 67.44121367 -0.42094022 {Pose: {Head: [-74.67595693570988f, 121.61482257328979f, -69.80686383042512f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.07188113 68.03228126 0.80141661 {Pose: {Head: [115.05257415968997f, -179.17630955375895f, -104.30432336959511f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78396141 67.89664152 -0.07901977 {Pose: {Head: [-167.53406922409087f, -37.3431878624354f, 106.26063897946132f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.02495699 68.35864425 -0.74834777 {Pose: {Head: [102.01627064044332f, -20.364251278737733f, 115.64310184085213f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.43932602 68.73700511 -0.01960001 {Pose: {Head: [25.571588246704522f, 76.56784218863811f, 152.7741715137408f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.70740194 67.71706773 -0.16913810 {Pose: {Head: [57.27992306893851f, -69.92102796899003f, 27.973961273796366f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65636870 67.70263604 0.29669296 {Pose: {Head: [52.03912373114484f, 133.323044003569f, -36.414146655678586f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55915018 67.52108905 -0.20633448 {Pose: {Head: [-61.10068173834741f, -105.0520862405135f, 126.25493778771278f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72433730 67.74142194 -0.14350265 {Pose: {Head: [-92.84293477826478f, 101.11412401318228f, -178.87793454086707f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.42125394 68.59738068 -0.42987956 {Pose: {Head: [72.0132545584603f, 47.67538243739649f, -174.3317022451872f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.74216816 67.96175968 -0.29561202 {Pose: {Head: [-9.36452026567985f, 139.38922612372923f, 62.489495735595796f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.07798176 67.30669165 -0.26649811 {Pose: {Head: [-16.45051439908662f, -124.26249495722816f, 25.09913526628745f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.01470744 68.16805293 -0.79811711 {Pose: {Head: [116.06907152617454f, -3.9371928852028226f, 23.09380891637345f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44870132 68.72740781 -0.07009550 {Pose: {Head: [179.14289780219718f, -75.54719119432968f, 53.83145960989189f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.79970806 68.14358292 0.04734162 {Pose: {Head: [78.08448418441772f, 93.95285406131734f, 154.25656138476685f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.39441159 67.91512897 0.68634535 {Pose: {Head: [86.26085347406283f, -158.13263108461152f, 28.65152190151513f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28275399 68.53351703 -0.58867800 {Pose: {Head: [-60.095866861109556f, 138.00312405079342f, 136.24041044105897f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64065602 68.44369928 -0.30429530 {Pose: {Head: [-137.93065309829922f, 170.75201807391997f, 63.05756310267464f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.21191672 68.79253030 -0.26551032 {Pose: {Head: [51.68123001860828f, -51.67682614351585f, 137.58783308623873f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.71458942 68.13563403 0.36381594 {Pose: {Head: [-71.91483183473396f, 63.129114780406766f, 4.194100035823682f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77853895 67.99417220 -0.19379649 {Pose: {Head: [140.78085948012594f, 73.6532096793615f, 37.297820396934206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.14179416 67.62269320 0.65940356 {Pose: {Head: [105.82421337836735f, 145.15202315712463f, 65.61758232549283f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19766000 68.22639550 0.76316279 {Pose: {Head: [-76.6262054313756f, 17.572270520199453f, 120.59614862942195f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53494427 68.56627099 -0.32923863 {Pose: {Head: [-67.12890934422612f, -114.17814742222008f, -46.913386017986284f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.46127425 67.61694118 0.48687992 {Pose: {Head: [-111.61923752694753f, -36.54966965442075f, -168.2555882396297f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.73663877 68.21235193 0.28854181 {Pose: {Head: [41.388328316234926f, 164.4946697310003f, 107.61139963534444f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47807516 67.87716505 -0.62084117 {Pose: {Head: [-32.55307752903439f, 167.68851789812047f, 53.48744374947154f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.26331643 67.30573960 -0.07954123 {Pose: {Head: [32.69367199935411f, -64.23797843277788f, 7.315124211851325f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.73796567 68.33436835 0.17275104 {Pose: {Head: [-52.48230941015424f, 76.96564819073483f, 38.62838173478089f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17790542 67.33481864 -0.29525947 {Pose: {Head: [70.3840237529669f, 61.770908397432585f, 33.499865536401224f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66429266 68.43549116 0.26065593 {Pose: {Head: [178.43945908832958f, 153.96431135523386f, 51.0650660412846f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17897881 67.38182705 -0.39115161 {Pose: {Head: [-11.009966260287882f, -162.7942863575228f, -4.822269914799007f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41855390 68.75033119 0.00703919 {Pose: {Head: [-159.46211129688976f, 59.305321699245425f, 32.16487039408169f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.63835433 67.57546108 -0.06037797 {Pose: {Head: [23.963227826312206f, 12.596659508728134f, -51.69497655385742f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.13106257 68.03755254 -0.79407108 {Pose: {Head: [-68.85742897593711f, -170.594118362436f, 1.1615558568376905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76866168 68.29608170 -0.05429055 {Pose: {Head: [79.76976494666414f, 85.54424921620439f, -46.7646941811554f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.03527910 68.86421195 0.06604541 {Pose: {Head: [-173.12526652893192f, -111.93902842868262f, 14.309789166946087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.35612959 68.53336597 -0.54754508 {Pose: {Head: [-112.09245275610002f, 155.51120287665867f, -12.112197720242708f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61896051 67.62622918 -0.27368653 {Pose: {Head: [-140.56940216789502f, 178.97456201761645f, 125.54853134163871f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.07051203 68.72839963 0.44716260 {Pose: {Head: [-75.66475484869164f, 56.106096037193964f, 77.67306710738211f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.09328426 67.46982140 0.53700911 {Pose: {Head: [-23.023331250083434f, -9.70966662489662f, -0.13515808371356464f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.30400579 68.57153100 -0.54480875 {Pose: {Head: [64.31051741171312f, -16.052169149704607f, 133.82248777428228f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77557974 68.11170376 -0.21072190 {Pose: {Head: [-43.21571762205479f, -107.11629382358376f, -31.927481195154492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70087782 67.73210922 0.21899970 {Pose: {Head: [-141.9684967729539f, -30.875405569722954f, 105.50991754514219f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23614896 68.83194187 0.02327090 {Pose: {Head: [139.83657044103595f, 91.91784764663265f, -42.644302240877515f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52039126 68.64580602 0.19312088 {Pose: {Head: [37.975240265143164f, 139.38444183539886f, -126.03079472639573f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55006985 67.55299730 0.29356229 {Pose: {Head: [173.92444233288592f, 147.4355703974607f, -147.28803705453944f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62586169 68.49996982 0.25547202 {Pose: {Head: [-141.05905046171213f, 17.072818138130614f, 60.94454223604164f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40978478 68.75562378 0.00212343 {Pose: {Head: [-160.14353534565018f, -59.74279148847445f, 30.33317449696208f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60715371 68.59088894 -0.02276305 {Pose: {Head: [-129.08142080247143f, 93.11378925761798f, 80.29223278233519f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61208170 67.85520775 0.48034838 {Pose: {Head: [162.9293719030457f, 179.26435761689862f, 108.1627284980309f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.79156449 68.16442985 -0.10669872 {Pose: {Head: [-34.377107824297035f, -99.435177512747f, 150.89916047002632f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76764488 67.89030687 -0.17152118 {Pose: {Head: [-133.91111119026394f, 118.48084870618932f, 126.33770182953138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72491238 68.21560045 0.31529501 {Pose: {Head: [-118.50711182496691f, -54.13194200638756f, 42.01875957294923f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71198292 68.43478000 0.05325952 {Pose: {Head: [-98.64289321854353f, -85.69575847765861f, 0.6628712990592422f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.11759681 68.50632902 -0.66146462 {Pose: {Head: [-41.64446514552832f, -159.62537913837295f, -132.81291831508042f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72259844 67.79550214 -0.23433372 {Pose: {Head: [-54.8742428547094f, 107.58440305255516f, -3.9864025237819605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.60071109 67.54218932 -0.12950534 {Pose: {Head: [107.49458992357638f, 80.73852401588252f, 137.01304807915346f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50496893 68.59025480 0.33886561 {Pose: {Head: [78.31749643069028f, -119.48603832295254f, 168.60514271508367f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.07866340 68.07123022 0.80130176 {Pose: {Head: [-74.8753629704757f, -3.4931696514254895f, -121.83861770976473f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.10478519 68.55151260 0.63105895 {Pose: {Head: [-52.889926449945605f, 34.71405371408814f, 131.14490933729914f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.44722955 67.68714246 0.55447372 {Pose: {Head: [-109.63696854117991f, -27.312377144126998f, -159.37408361024853f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.37056263 68.72759042 -0.26208151 {Pose: {Head: [-83.83288694126774f, -109.54701541683364f, -104.94862728432481f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.60154495 68.59611555 -0.04179448 {Pose: {Head: [-166.8890166511324f, 62.45986901962617f, -54.144958826148354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.43214466 68.02277756 -0.67824905 {Pose: {Head: [91.46063247720194f, 27.604520719705775f, 139.5561206663061f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23418613 68.82819203 -0.08497786 {Pose: {Head: [145.92747364442533f, -82.46862558167804f, 70.39798458798158f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.10194658 67.26776206 -0.07966907 {Pose: {Head: [-125.07656419311715f, 99.84262012014744f, -152.34298954193355f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.06833331 67.35384302 0.37614425 {Pose: {Head: [48.45122903894292f, 165.1878861720353f, 2.523343319843097f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.62183378 67.55333204 -0.04918731 {Pose: {Head: [130.88843806026878f, -86.2398484736674f, -60.68490577194508f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.48429777 67.78507449 0.58037868 {Pose: {Head: [-82.81801732414839f, 42.44449586893491f, -47.81501168582708f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.16862383 68.81399926 -0.23486917 {Pose: {Head: [97.71823994915923f, 72.66073457020593f, -89.73818270065641f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.19233458 67.28060863 -0.00139522 {Pose: {Head: [14.451161768939793f, 91.11571133677575f, 8.715127953952893f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76696447 68.28104530 0.11114006 {Pose: {Head: [-22.589171197456473f, -78.12959997182631f, -64.37453811789534f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68466282 67.87435132 -0.37971773 {Pose: {Head: [170.39575573992138f, -14.57550444178582f, 113.35906392426463f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66477779 67.68689769 0.25562092 {Pose: {Head: [-45.034590642894344f, -69.42341238069477f, 2.563695518766904f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.54506092 68.05974237 -0.59266319 {Pose: {Head: [-107.9202038462811f, -158.04454158173877f, 64.29295486665232f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.10638990 67.33324697 0.32437612 {Pose: {Head: [-11.608049824277932f, 38.88043256972192f, -29.087914259324076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.20478293 67.38765271 -0.38857913 {Pose: {Head: [-12.774931358120059f, 154.46721814867556f, -32.140328937567986f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70878864 68.44276555 -0.03695175 {Pose: {Head: [-157.726011792533f, -165.4604712465919f, 61.10373901994818f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65652107 67.93075328 -0.44718178 {Pose: {Head: [59.23798272519592f, -29.567531501013697f, -100.91706156110186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40636368 67.83798979 -0.65788478 {Pose: {Head: [119.12074435424107f, 34.04879997037757f, 167.82840440592832f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70452813 68.13324277 -0.38338523 {Pose: {Head: [138.87688141157355f, -56.90063025913874f, 140.4268024268368f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.41661000 67.42549202 -0.26268916 {Pose: {Head: [75.13627073006876f, 66.7037926486761f, 86.45997100847785f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50627341 68.17216764 0.61644862 {Pose: {Head: [137.67066276688814f, -150.226762727979f, 120.68322103528173f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.10162048 68.83181533 0.21488570 {Pose: {Head: [-176.00733839881056f, 174.0584060029838f, 5.87328718658318f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.44419337 67.95471224 -0.66288966 {Pose: {Head: [126.19332717880125f, -30.770010725717494f, -43.928053051884255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50179735 68.21597908 0.61073091 {Pose: {Head: [107.22947112377007f, -139.385677342274f, 166.56551663892267f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.29507178 67.95526197 0.74147239 {Pose: {Head: [-92.42592581510849f, 6.75876757493624f, 126.22658495552633f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72358578 68.37201408 0.17021549 {Pose: {Head: [67.38022107832782f, 106.57391702883577f, -66.54715942218945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.32471646 68.33360391 -0.68513542 {Pose: {Head: [134.6532126105393f, -20.017089619518167f, -13.98065373960459f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44901572 68.46944813 -0.53021388 {Pose: {Head: [62.21504710026056f, 13.650327030988826f, -119.91817729027646f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41098083 68.24541305 0.66782200 {Pose: {Head: [-67.19401573649913f, -33.82712381862082f, -29.81527934532667f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.53319623 67.47561797 0.14007113 {Pose: {Head: [-116.11788684795607f, -75.583922805558f, 178.84615257349355f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.06510567 68.86382356 -0.04461464 {Pose: {Head: [174.86789500040894f, -82.37700207362928f, 29.141184801572628f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.61765286 67.87265845 0.48043084 {Pose: {Head: [-79.9126801084403f, -52.77821468789462f, 174.744720872054f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56757719 67.78459666 0.49897347 {Pose: {Head: [64.95615140385796f, -150.49622764472963f, -90.44964642297448f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48417285 68.20544386 -0.62728970 {Pose: {Head: [-41.303517341932896f, -153.11762688083587f, -67.40481941129354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69427218 67.80481648 0.31612339 {Pose: {Head: [175.35182829310781f, 163.24931088090784f, 102.9809150381553f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.30443503 68.46700036 0.62613691 {Pose: {Head: [-33.32409381156452f, 12.78361597228379f, -159.33128087143237f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.00905186 67.84078794 -0.77402227 {Pose: {Head: [-54.995375400251135f, 175.7954262578126f, -12.520887459557528f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.50574663 68.68903888 -0.00424586 {Pose: {Head: [20.830508081521746f, 76.27973646515379f, 142.32685661443605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.12963245 68.67824447 -0.50239709 {Pose: {Head: [-85.68073956457837f, -130.29126497819266f, -58.45886184582239f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35313804 67.34064003 0.05060004 {Pose: {Head: [157.07456318149463f, 95.33904017617954f, 111.57387380286055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80252631 67.99737465 -0.00767217 {Pose: {Head: [2.9009724211138455f, 91.90507447250329f, -102.00751822683074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.26630984 68.34906859 0.70377992 {Pose: {Head: [125.64575037243821f, -155.46019066585131f, 98.12275653094115f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.52082275 67.46605641 -0.14610735 {Pose: {Head: [-147.6633842914368f, -145.11359296147293f, -146.2640376429916f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52867038 67.60729344 0.40204884 {Pose: {Head: [-66.99233839405609f, -59.985311827875606f, 36.74585058694492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.57105678 68.59575138 0.19464271 {Pose: {Head: [37.681961120773785f, 140.98944168676172f, 144.68206234703015f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.27076560 67.91463154 0.74375370 {Pose: {Head: [-48.7092429425452f, 6.079891932701074f, 46.48124590271726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68494766 68.47807876 0.08055838 {Pose: {Head: [-175.8816223352357f, 112.07606407043284f, 44.39865631533773f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.27606240 68.15198629 0.75108616 {Pose: {Head: [91.18431614181186f, -169.3867498464687f, -136.9710953504996f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.59822634 68.59841137 0.05720930 {Pose: {Head: [-28.83282650767006f, 84.54709958736876f, 83.59469509462785f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76307518 68.26485500 -0.15848463 {Pose: {Head: [-144.25425979850067f, -134.90659509610552f, 63.52858917664879f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.30096595 67.62794160 -0.60739374 {Pose: {Head: [69.8417717455975f, -11.29404915429932f, -47.972085359085284f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.44503903 67.61272602 0.49798824 {Pose: {Head: [-61.76605972948608f, 51.27187681081651f, -34.23411052326907f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76834384 68.30271194 0.01716447 {Pose: {Head: [-156.20756899915853f, -73.22547498484195f, 68.5826716966781f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28041111 67.97926601 -0.75019355 {Pose: {Head: [96.34234065164287f, 16.85830597611713f, -22.463833005029592f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.65358540 67.59753093 -0.07055882 {Pose: {Head: [24.89203327486359f, 19.544273338970317f, 56.36094886157028f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47629150 68.70948325 0.05392352 {Pose: {Head: [-149.99371189817313f, 68.33152539104715f, -26.633596704546072f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22873560 67.30434960 -0.14572800 {Pose: {Head: [34.45914473202525f, -45.272626807481466f, 6.081951335063875f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.63745339 67.57769817 -0.08348061 {Pose: {Head: [75.4908555711937f, 82.81036905788672f, 2.9781295369385403f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.71453239 67.90610015 -0.33664701 {Pose: {Head: [-68.99055886115704f, -114.72258073670075f, 166.05420449717272f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65270192 68.53154845 0.04819138 {Pose: {Head: [-141.2823443922759f, 79.49362281854329f, 73.16070170460345f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.45155997 68.69242821 0.21824916 {Pose: {Head: [3.8082456559283258f, -2.9655487476992803f, -143.52955111872168f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56632252 68.46813032 -0.40384589 {Pose: {Head: [-46.471489233522696f, -123.29099613362209f, -63.622347257901566f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68901588 68.45024468 -0.15251175 {Pose: {Head: [-119.23645081173338f, 106.70914525604402f, 100.61703499187429f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69461491 68.10044678 0.40548592 {Pose: {Head: [-121.86309190358085f, 36.14487076772322f, 112.07108270352249f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.44916110 68.34886081 0.60382154 {Pose: {Head: [146.0398304596061f, 158.85613147942064f, -83.48241776169425f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69004322 68.17394456 0.39971131 {Pose: {Head: [52.14236071863714f, -157.1813082309881f, 85.25223092648999f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.20884742 68.80527433 0.23025573 {Pose: {Head: [61.21650816144252f, 115.48056637246758f, -156.93405020064338f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67754450 68.23803906 -0.39808058 {Pose: {Head: [-25.337404392862197f, -134.46434642968677f, -69.11014134549643f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55704839 67.48280347 0.04469545 {Pose: {Head: [9.574495183996657f, -71.32330745370533f, 53.32482871676787f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.04841944 68.12460285 0.80134103 {Pose: {Head: [-65.57126742648056f, 2.78934896362772f, 112.33545732706018f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.71204109 68.43806883 -0.01715245 {Pose: {Head: [-163.74550129647727f, 68.29524463183417f, -65.25887129425436f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35665126 68.59671736 -0.48555160 {Pose: {Head: [63.946708151039864f, -30.455585951313466f, -172.66262447250375f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60423687 67.53122168 0.03146118 {Pose: {Head: [9.035864797456963f, 77.64380529772764f, -58.958576350773825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53624615 68.59056061 0.28625290 {Pose: {Head: [-55.69155448472184f, -68.43093056578628f, -60.36825334955977f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.25065252 67.53214793 0.55158740 {Pose: {Head: [-34.69703484660117f, 32.43096918325892f, -61.98386075345154f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.29895609 67.38247743 0.31071405 {Pose: {Head: [-8.703757998481361f, 35.412939573195985f, -41.0330132357094f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.52602616 67.45293094 0.00840813 {Pose: {Head: [18.16917508514047f, -64.45166879667988f, 42.04428024059535f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60487158 67.89126114 0.50314638 {Pose: {Head: [-102.09333065998707f, -42.773414325068536f, 58.036179590791626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49222098 68.69905804 0.02934309 {Pose: {Head: [74.07392204519913f, -92.56501320605234f, 163.22295451396627f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71786842 67.78305056 0.23435360 {Pose: {Head: [-130.80103787072517f, 53.951263610416184f, 135.97660771448994f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72691144 68.40708294 0.03479968 {Pose: {Head: [-151.34335087715337f, 74.14161079266671f, -55.878137302090295f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77371726 67.87544571 0.12132990 {Pose: {Head: [34.00965741850997f, 127.13743250538565f, 88.01992946638808f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.29484416 67.91031718 -0.73365930 {Pose: {Head: [-63.0836136074678f, -156.73960131400128f, 9.188957546633745f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.46287032 68.24596336 0.63280401 {Pose: {Head: [72.02435640381964f, -172.31914861270522f, -121.49092016150674f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.55318051 67.53990308 0.26312058 {Pose: {Head: [-51.56546969833999f, 69.79666771625614f, -116.60849107379305f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.01482090 67.39168176 0.44512008 {Pose: {Head: [161.78327049462055f, -154.4863900184373f, -160.27614788089124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41464848 68.74739459 -0.08564288 {Pose: {Head: [80.10083100926242f, 82.98368220210105f, -88.44900776350407f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79088474 68.17083241 0.10542331 {Pose: {Head: [-170.45652919681962f, -138.85140983606522f, 88.82735353563989f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.09802579 68.39629477 -0.72616847 {Pose: {Head: [84.5885518337445f, 5.834318390547137f, -151.31891041198935f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72662703 67.78819153 -0.21240686 {Pose: {Head: [35.9953753784811f, -21.225370872134324f, 63.22081354169427f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47894223 68.03057288 -0.64648562 {Pose: {Head: [-49.77993241164322f, -149.10266433395816f, -32.48155679135542f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.41151839 67.69580483 -0.58697182 {Pose: {Head: [140.24475372932125f, -32.038960266413405f, -89.91072713483432f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.80420350 68.03191455 0.02588264 {Pose: {Head: [10.18186626838178f, -78.61874597233577f, 97.0155409989904f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.25440291 68.81047375 -0.15544479 {Pose: {Head: [-9.332157905108334f, -113.55316716970866f, -171.95381613138744f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.57801835 68.43570953 0.41827993 {Pose: {Head: [-122.34885658576992f, -32.649533488973134f, -80.07621409413879f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72780282 67.85040015 0.27141365 {Pose: {Head: [-17.804530839131463f, -56.25735522911881f, -41.342422808572486f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32971196 68.09620125 0.73382757 {Pose: {Head: [-72.40897996241148f, 24.231301692258608f, 169.38389621485592f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79946485 68.15536559 -0.02409541 {Pose: {Head: [16.751441800870115f, -127.69526504029406f, -94.4054562267758f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.26723178 68.73710446 -0.34906254 {Pose: {Head: [-67.55144106423674f, -115.72566187923528f, -71.59945327935236f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.00165257 67.27029780 -0.14408888 {Pose: {Head: [66.86617509668707f, -75.90933288419487f, -46.31675987342985f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.78884313 67.94024209 0.10549017 {Pose: {Head: [5.1500382393871025f, -58.22601726615034f, 93.5090550448643f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.57244489 67.50527246 0.10076196 {Pose: {Head: [-173.9247937790903f, -122.46459672098523f, -122.79328891566375f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47762371 67.64017716 -0.49180044 {Pose: {Head: [-42.38141807978905f, -133.8004909256072f, 5.033551023076486f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28898204 67.35763878 0.26078478 {Pose: {Head: [-33.46058772275136f, -66.08102871049212f, 28.224246865721316f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.24250666 67.53736662 -0.56015543 {Pose: {Head: [-53.41159537949621f, 136.68403312057046f, -90.72469067954623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.27442342 67.80218662 -0.71082866 {Pose: {Head: [82.66647116679246f, -8.182239466125532f, -62.18839250765867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67301099 68.31651436 -0.36177558 {Pose: {Head: [-8.320842014311545f, -163.92460451782455f, -102.34499678726183f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40095277 68.18448850 0.68753498 {Pose: {Head: [99.11560437838094f, -150.2551986195063f, 37.29805662097341f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.48094747 67.80141570 0.59065487 {Pose: {Head: [70.74080551774391f, 160.29748613256965f, 84.24192080155852f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.36627938 68.52383499 0.54896093 {Pose: {Head: [112.90999615216822f, -133.0736715078514f, 123.86187342905197f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23035711 67.32109237 0.21353918 {Pose: {Head: [174.9611386308957f, -129.5818532406295f, -177.82796293675148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70792521 68.44615419 0.00014916 {Pose: {Head: [19.33107464340188f, -87.30254763456074f, -118.22983811608776f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.22937250 67.53625875 0.56463002 {Pose: {Head: [141.15665915653955f, -145.4167917365161f, -160.85559123635338f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.67832362 68.11419984 -0.43075846 {Pose: {Head: [133.34624846671045f, -54.222015667929575f, -24.160219226278574f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.26784041 67.56719868 -0.57557517 {Pose: {Head: [-30.14393674757122f, 159.59585847111634f, -50.750902894338196f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75477293 67.91688168 -0.23971188 {Pose: {Head: [-7.33861768132388f, -131.15615905155488f, -58.17831764780878f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28768689 68.61835588 0.50656604 {Pose: {Head: [149.6791771383718f, 145.35936251343745f, -61.36337825962267f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.05208753 67.43928265 0.50718407 {Pose: {Head: [-20.892701982070488f, 13.860039380775593f, -16.32034274672864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.14468577 68.78831197 -0.31719344 {Pose: {Head: [110.40076161169554f, 66.79803012761364f, -100.35531593016745f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.03700816 67.28714197 -0.21400697 {Pose: {Head: [-137.5240859058154f, -133.03765430197527f, 165.55959637725033f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71827241 67.72756754 0.14231533 {Pose: {Head: [43.49295429549738f, -115.82547900430363f, -86.78010212599135f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32027651 68.06717470 0.73874878 {Pose: {Head: [98.95465834850849f, 158.97201958824314f, -28.384953749900834f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32157876 67.57219630 -0.55184965 {Pose: {Head: [-114.99571152087643f, -164.10283930205668f, 131.19212280560896f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60922337 67.55566893 -0.14254058 {Pose: {Head: [5.910400820004256f, -138.6199636146013f, -41.1243145279605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.73169037 68.16996758 0.31847854 {Pose: {Head: [91.86079842842372f, -114.53009110010045f, -169.02912549849836f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.55374050 67.68154181 0.44338581 {Pose: {Head: [-86.01687614400737f, -55.135407678827065f, 53.28829407996712f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.46787302 67.80671987 -0.60334072 {Pose: {Head: [-72.14692953054747f, 138.55883877073452f, -31.23776927372968f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22385540 67.70961028 -0.68826322 {Pose: {Head: [137.99512246503326f, -13.572578043419716f, -124.18253097838002f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.39409469 68.62084116 -0.42578538 {Pose: {Head: [152.57541020100354f, -43.676047422834664f, 1.2883594720998115f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22733507 67.71566763 -0.69019905 {Pose: {Head: [134.38022725715942f, -19.189260438540785f, -111.35989438597205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.12165616 67.26916126 0.06451414 {Pose: {Head: [-28.629462966139688f, -83.82873578554978f, 39.302314112014564f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.44212435 67.65883692 -0.53845226 {Pose: {Head: [90.48988398285317f, -44.96537732175937f, -16.33348685082426f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44139402 67.61278809 0.50127755 {Pose: {Head: [-120.70746331076828f, 13.125621973227933f, 146.22484011993518f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.27639929 68.81848611 0.02090670 {Pose: {Head: [-158.53475836382012f, 38.778114085412405f, -18.887467836946538f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28682276 68.81236211 0.06154820 {Pose: {Head: [-93.19908867445716f, 85.24528232588725f, 88.10566314435916f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28787812 67.50554493 0.50524836 {Pose: {Head: [-121.45483716642993f, 4.1932975143885365f, 156.05382705666997f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.45608921 68.39134595 0.57636068 {Pose: {Head: [72.08854603148491f, 154.40324209224227f, 155.20155326627076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53964113 68.52723299 -0.37571180 {Pose: {Head: [98.50216363400769f, 61.6128081133916f, -53.255119171434124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38814280 68.76746621 -0.02676679 {Pose: {Head: [-94.62254897669395f, -92.08827541642839f, -36.970170205533655f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47597956 68.13893077 -0.64494221 {Pose: {Head: [143.07936047792865f, 16.099732382492284f, -103.59216267999787f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.19349612 68.79555809 -0.27117107 {Pose: {Head: [153.77667822690046f, -61.971024571322246f, 27.423970273475682f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.58295791 67.56232559 -0.24152494 {Pose: {Head: [-6.125490178995232f, 133.79943402354962f, 30.229474269741832f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.65512656 68.26716713 0.42103350 {Pose: {Head: [135.80477716512226f, 125.66240753499468f, -131.39614564054295f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31622587 68.64500635 0.45720477 {Pose: {Head: [-78.00178383655219f, 55.05490200259333f, 109.30125618652072f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80470148 68.08968457 -0.00807385 {Pose: {Head: [113.0775860450601f, 89.42439219869135f, 1.5863256561568395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.39870516 68.30496781 0.65619526 {Pose: {Head: [-59.038149447876755f, -33.76101597471818f, -51.256345475274045f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.51393433 68.41999570 -0.50637633 {Pose: {Head: [-81.70756909875958f, -129.88389538698942f, -130.62689513312807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77630685 67.85052366 -0.02761094 {Pose: {Head: [-131.2045183315634f, 94.02564110200284f, -76.09412651451856f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28651762 68.42848154 -0.65750576 {Pose: {Head: [-39.439591482895885f, 162.30347802104671f, -168.77487336380247f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.57685892 68.05181419 -0.56166561 {Pose: {Head: [-107.81288135987371f, 151.36697367789097f, -58.954720610026904f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.58032835 68.62039178 0.01801174 {Pose: {Head: [88.46766528000751f, 91.37379929386786f, -157.22372947563255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.66077024 67.60411520 0.04018358 {Pose: {Head: [105.59732904383164f, 92.86738450499328f, 141.2862427419885f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.64954673 68.21311670 0.45138931 {Pose: {Head: [-14.540176640973659f, 0.05724607581873541f, 103.01625661592992f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.42615591 68.60007530 -0.42160715 {Pose: {Head: [129.9239551725238f, 56.04625085828312f, -104.29365519100595f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33732726 67.34842619 0.15702728 {Pose: {Head: [171.53741262076574f, -114.52774509105527f, -179.4534662329258f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.65668725 67.80640226 -0.38926143 {Pose: {Head: [52.83713771896194f, 28.237901906192228f, 85.94773796673634f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.36395601 68.63433350 0.43461606 {Pose: {Head: [-14.682525383127025f, 16.39824217227079f, -158.4007048102667f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.73550432 68.13214420 -0.32020578 {Pose: {Head: [171.07955173187594f, -33.48485270335042f, 101.2517874250013f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60866804 67.66413543 0.34522101 {Pose: {Head: [73.29520563861286f, -122.1216344631515f, -105.8993051527888f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.02785185 68.23786553 -0.78537880 {Pose: {Head: [119.13332973853954f, 8.440959039381326f, -31.99962183547827f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.07561129 68.06328562 0.80164267 {Pose: {Head: [114.74658585814416f, 178.54884876177272f, 73.82565283047548f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.04443683 67.26379185 0.09186578 {Pose: {Head: [108.2162987137482f, -96.55296986490063f, -91.83530840395065f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77480921 67.85951839 -0.08257004 {Pose: {Head: [-146.03065468764467f, 114.3297399819521f, 117.85969287503927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28588075 67.31501351 -0.08879637 {Pose: {Head: [77.87193963238613f, 82.5538501335051f, 79.02771761437678f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.01723234 67.27808681 0.18096314 {Pose: {Head: [32.583757696519314f, 175.58097150454753f, 2.279795447015518f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.39782178 68.75095282 -0.12696142 {Pose: {Head: [-130.40520999529863f, 108.36019548608522f, 58.7795900604948f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70203899 68.15726598 0.38276537 {Pose: {Head: [-19.98026495233083f, 41.68979907861853f, -126.45374354649786f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40446876 67.82377178 0.65403556 {Pose: {Head: [-98.90495503345294f, -22.492004191495738f, -155.76110709980748f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28223230 67.30863607 0.01956432 {Pose: {Head: [152.73650636271492f, -91.90946510339471f, -112.67084562411105f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.07901935 68.58988162 0.60330193 {Pose: {Head: [-87.38566954426673f, 38.4408634735012f, 72.41709363686171f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80059442 68.05075357 0.08520130 {Pose: {Head: [-167.45330737924937f, 150.11584351631086f, 87.33476999088374f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.58372109 68.55567773 0.25375987 {Pose: {Head: [-110.92709266413094f, 65.52159700199574f, 96.6417779641118f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34016728 67.68498265 -0.62459229 {Pose: {Head: [-86.57221594193986f, 143.85045817919493f, -158.13603418768852f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76084953 67.87864637 -0.18882397 {Pose: {Head: [54.855994078099094f, 66.0571850426678f, -43.50845189016462f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23813128 68.77481892 0.29024801 {Pose: {Head: [-1.5993393493495844f, 2.8325150100231156f, -162.61057117209353f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70878024 67.72792346 0.18449326 {Pose: {Head: [3.0208131735686012f, -36.38547023951532f, -54.74198650236095f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.45739007 67.81414821 0.61438129 {Pose: {Head: [82.56017539192628f, 148.90650100242016f, -16.108753211343867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52844945 68.66737254 0.05673668 {Pose: {Head: [128.14544425436972f, -94.26336374611303f, 112.50535505698312f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.10226305 68.69356301 -0.48954101 {Pose: {Head: [-110.56156258418852f, 142.65815666627154f, 44.95333829772752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51844182 68.44579278 0.48234157 {Pose: {Head: [161.98514862719188f, -169.24148452313386f, 61.6960699560808f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.21793436 68.83708672 0.02947355 {Pose: {Head: [31.16199994201102f, -100.48366161754157f, 152.86895120838568f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74228225 68.37393486 -0.01934043 {Pose: {Head: [-171.73116503626412f, 82.95131234535992f, 56.0342174968145f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.35167649 68.78660771 0.01844781 {Pose: {Head: [-164.51798544570866f, 108.81042272669801f, -29.762034760122713f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.04702369 68.85946666 -0.10479298 {Pose: {Head: [-168.5255233100631f, -22.227104477558335f, 6.45150719141844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.74555754 68.25351268 -0.23665750 {Pose: {Head: [-28.69930936551785f, -113.19839366830654f, 150.21766593770928f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.48873685 67.42398585 0.04224497 {Pose: {Head: [-90.79942799867254f, -86.79206058109966f, 147.8168143730391f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.29177101 67.73459848 -0.67505476 {Pose: {Head: [107.38734065137191f, 32.96856754000227f, 127.6813241630465f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.43065895 68.43225298 0.57110792 {Pose: {Head: [91.93074204142616f, 138.0914078867127f, -66.08720313437182f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28321321 67.68914507 0.65478625 {Pose: {Head: [-35.89989424415953f, -9.158147539506496f, -24.164392631656817f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69546993 67.67980652 -0.13496642 {Pose: {Head: [9.22448747025208f, 159.1586308727169f, 57.46635505022856f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19529085 68.76577118 0.34002910 {Pose: {Head: [127.16591180365792f, -116.29875361691376f, 86.02328012734606f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55388246 68.64664779 -0.01828211 {Pose: {Head: [-172.5393140572782f, -83.77967768359149f, -31.44983016929238f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78633580 68.14653372 0.15153550 {Pose: {Head: [8.372768947359637f, 14.000298628567984f, -98.83838123577065f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.01332154 68.18888404 0.79510897 {Pose: {Head: [-67.1728616163884f, 8.476126568119158f, 105.17353049149517f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.48545449 67.42524497 0.08117032 {Pose: {Head: [-166.38861446837635f, 166.71966602612852f, -144.07058291438182f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.52468487 68.57699250 0.32916852 {Pose: {Head: [-100.06253915467903f, -61.94943442698519f, -11.648731260308036f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.27352365 68.02749472 0.75651048 {Pose: {Head: [93.52321678595716f, 167.8380377975898f, 118.95219840562552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56167964 68.25323964 0.54450255 {Pose: {Head: [-65.0815295019872f, -47.21854547688484f, -26.04422316228605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.74106223 68.04195619 0.31425050 {Pose: {Head: [70.44697540832902f, -120.1967794640389f, -135.16550428188603f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65203328 68.53428351 0.02493146 {Pose: {Head: [116.87783290364412f, -91.78892382439047f, 136.78733609590427f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.38923353 68.56458893 0.49472480 {Pose: {Head: [58.2379015403183f, 169.44434071145145f, 150.55995683639884f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.32259733 67.49554928 0.47206620 {Pose: {Head: [56.23200582607383f, -168.98192713092794f, 21.53967538409235f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76493132 68.26413913 -0.15023448 {Pose: {Head: [31.2262395805885f, 22.714854118429788f, 109.32736320235482f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70341545 68.32105494 -0.29445664 {Pose: {Head: [-138.51321099538586f, 168.28221611250953f, 74.49252446376154f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77666865 68.18421343 -0.17412728 {Pose: {Head: [-147.56886021602529f, -166.05837812801073f, -84.24549673695927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.32349706 68.32792896 0.68792861 {Pose: {Head: [-86.07126934675978f, -27.482360599778623f, -109.40846921823263f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77018742 68.29732295 -0.00426427 {Pose: {Head: [-132.35064274114933f, -90.64438132891283f, 44.952771391306754f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23090033 67.29532248 -0.08045095 {Pose: {Head: [102.0279869519723f, 84.21574440973352f, 99.18372442573911f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.40512574 67.48154881 0.38303721 {Pose: {Head: [165.83207988715114f, 148.96079691661853f, -164.1033879234729f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.50526365 67.72659392 -0.52936226 {Pose: {Head: [144.38361235802708f, -36.78551096325009f, -82.89711464501308f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.62556389 67.77761668 0.41935662 {Pose: {Head: [65.94306005823427f, -136.00016378897038f, 29.418977210480858f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.67355777 67.80310690 0.35690868 {Pose: {Head: [82.17529654931693f, -119.94572709721757f, 9.80610953274013f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68268399 68.45142953 0.17613928 {Pose: {Head: [-97.5953039997004f, 75.76828320419413f, 122.44587369719325f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.57385907 68.62714820 0.01438183 {Pose: {Head: [4.630174329868897f, 86.02376839000162f, 119.64437829300896f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.00500705 68.81708944 0.28092413 {Pose: {Head: [-35.41253793574405f, 64.7813937722454f, 127.39063432358257f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.74252818 67.82766419 0.20457932 {Pose: {Head: [-101.75960845695576f, -72.69849146214563f, -165.04384986474494f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75294778 68.34658054 0.02676837 {Pose: {Head: [64.23220763593206f, -92.71012965641569f, -155.3146008359452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.58067201 67.89775128 -0.53294140 {Pose: {Head: [93.37670500917933f, 46.43549899808306f, 142.33794344644602f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.61303498 68.58435780 -0.01418487 {Pose: {Head: [147.61383569115193f, -88.71800285494234f, 2.342527069313709f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.53814260 68.20743397 0.58115862 {Pose: {Head: [-113.1884508428104f, 10.639479319110315f, -63.62963589674452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66719990 68.50059640 -0.10613432 {Pose: {Head: [-136.57706183913655f, -109.01267739380698f, 34.010766253437765f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65969773 68.39972912 -0.31531585 {Pose: {Head: [-113.86880546951406f, 122.62864885991156f, 104.5869170549684f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76490639 68.03380300 -0.24988669 {Pose: {Head: [-114.57722270472395f, 115.62002214892478f, -49.245255637321144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37495108 67.35346402 -0.07091068 {Pose: {Head: [-6.356837089915137f, 101.62572655906905f, -53.320294367908836f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.50963548 67.70472309 -0.51050565 {Pose: {Head: [-37.9117598719046f, 138.76423933983142f, -100.87156174718443f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.47017928 68.45279630 -0.52435570 {Pose: {Head: [156.15774581135074f, 18.593486878994625f, -67.08252799222528f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49667623 68.42315246 -0.52114411 {Pose: {Head: [-20.78288527828765f, -179.02981847294856f, -125.16077077382936f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.57177471 67.64991588 0.38884018 {Pose: {Head: [-124.0494630161357f, 35.52186317555185f, 148.9974256698318f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.13029255 68.79919882 -0.29773705 {Pose: {Head: [144.80837003852403f, 63.07651634191685f, -61.62592438049554f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.68418316 67.63821349 -0.01493352 {Pose: {Head: [61.56662428189344f, 88.4120355017234f, 100.19454770986447f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.05726284 68.13414258 0.79996060 {Pose: {Head: [113.07556610264805f, 174.48349346565655f, -18.758570354413482f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.65975694 68.41133656 -0.30229537 {Pose: {Head: [-105.8251307496089f, -117.4175599561898f, -113.47149802977171f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.54139817 68.38387029 -0.50195399 {Pose: {Head: [-108.00147665860429f, -141.84826020650524f, 20.529385304630477f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.13692040 68.70164025 0.47021400 {Pose: {Head: [121.99657617579845f, 126.72757348930804f, -62.51986194323525f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.02196617 67.83256265 0.77135916 {Pose: {Head: [95.39485745780212f, -171.11384523027988f, -36.93129841407191f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.73025826 67.72378630 0.01856226 {Pose: {Head: [17.901703903105894f, 37.03656647671604f, -66.11380321124675f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72797103 68.38056045 -0.13131790 {Pose: {Head: [54.604686804698886f, 73.50131351836622f, -79.67728622298603f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.43335521 68.59985246 0.41449276 {Pose: {Head: [155.65104029386453f, -137.92835870113342f, -6.065420214796724f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34161621 67.65423184 -0.60412261 {Pose: {Head: [-104.71007849498943f, -155.210696974543f, -171.6879901266895f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37299469 67.34892346 -0.00566895 {Pose: {Head: [-161.20895442100124f, -58.20120482619264f, 153.05406839015112f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.75647476 68.13020141 0.26741563 {Pose: {Head: [-45.25097335947778f, 68.46804079857206f, 31.939552864878245f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.57948112 68.57945846 0.21284791 {Pose: {Head: [175.70936058836512f, -130.83065774888914f, 66.75698762007036f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.39312313 68.70597354 -0.28239098 {Pose: {Head: [145.42445544333074f, -64.35615501519807f, 82.69198633065699f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.12653662 68.85424400 0.07401739 {Pose: {Head: [24.8509658160288f, 175.0180074634328f, -170.45869238272226f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.04699623 68.34484855 -0.75260833 {Pose: {Head: [117.68782827051227f, 19.23489988797904f, -57.10375944638225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.68196971 67.75393678 0.29674016 {Pose: {Head: [173.78629290114958f, 147.9572894427297f, -128.71162380441442f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.80001969 68.01624679 0.07859891 {Pose: {Head: [-6.554086676451947f, -77.18543901629178f, 112.23512691076719f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53294681 68.65761538 0.10076726 {Pose: {Head: [-19.681708302445575f, 78.58910866905006f, -176.83348187729808f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.29910731 68.77893643 0.21354698 {Pose: {Head: [-81.26054972004594f, 74.33530110873588f, 56.115789460685136f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31914032 68.31891686 -0.69336030 {Pose: {Head: [79.09901624825183f, 2.62214395808976f, -124.33198008880744f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40415811 68.12047992 0.69400519 {Pose: {Head: [-92.14535545978887f, -21.927784490425665f, 38.658921703333434f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.15458368 68.09532233 0.78954116 {Pose: {Head: [-79.76466151126681f, -6.448916827280452f, -112.39597525898368f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60108602 68.51114066 0.29285801 {Pose: {Head: [104.9903085887259f, -111.39934118873181f, 148.1657549900674f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41025975 68.12610414 -0.68992037 {Pose: {Head: [-42.19686986261036f, 166.5699650837504f, -122.1922049541269f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56721016 68.16441757 0.56234695 {Pose: {Head: [78.00736741284575f, -145.03744953766451f, -143.21089450196712f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72471197 68.28619294 0.27037507 {Pose: {Head: [61.496944199703854f, -120.15925623702702f, 69.31033275143027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79742235 68.10429041 -0.10353652 {Pose: {Head: [8.59195732715004f, 132.53486058201085f, -101.12461749251254f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28117530 68.28465606 -0.72106574 {Pose: {Head: [-53.90648969251812f, -159.0912338058714f, 178.55273742370034f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.71089392 67.85474682 0.31593846 {Pose: {Head: [176.38090833380076f, 175.5625535223719f, -108.18766012379048f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.29222867 67.31234509 -0.01478736 {Pose: {Head: [-163.81671952740484f, 71.81378410053198f, -161.9213835623949f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72985265 68.32282112 0.21885311 {Pose: {Head: [-136.19237586245393f, -48.567394072000575f, -89.0321307234024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.45121200 67.40886168 -0.13233794 {Pose: {Head: [33.38344034471085f, 46.5511553211358f, -24.486909391811032f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21409450 67.51259311 -0.54782718 {Pose: {Head: [74.47011633289934f, 33.75234921504809f, 17.06955120744456f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.80500683 68.07288859 -0.01430852 {Pose: {Head: [135.40906711869272f, 88.86854443306824f, -153.40378631125205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.33967159 67.69229446 -0.62922153 {Pose: {Head: [147.55910126283095f, 7.38549482975503f, -146.80525921001765f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76488750 68.31371136 0.01373386 {Pose: {Head: [-159.23594242178086f, 35.961363182027426f, -71.10917412187682f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.28035592 68.81494119 -0.05984542 {Pose: {Head: [-142.38522409694463f, 103.87278768357731f, -2.8708941365219602f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65752990 68.31931948 0.38735879 {Pose: {Head: [-34.46772370499575f, -53.526346062203515f, -63.40752512879658f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.68035606 68.47135892 -0.13527259 {Pose: {Head: [-130.60975356192253f, 109.73660588359374f, -30.63629985159426f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.62617920 68.49613576 -0.26116719 {Pose: {Head: [42.90350944950659f, 35.06988617742561f, 138.6318442946022f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.66953344 68.11903269 0.44370901 {Pose: {Head: [-68.23049608494087f, -56.532424897244915f, -177.8257841452106f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79037017 68.19878242 -0.07134951 {Pose: {Head: [152.07548881848564f, -83.0950353198935f, 127.49005307312675f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.29028377 68.73474353 0.33492182 {Pose: {Head: [-47.855725855956784f, -63.223907783425034f, -91.62885996162682f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.29162816 67.36944736 -0.28806199 {Pose: {Head: [-20.594983086372054f, 123.69800395633787f, -12.2430104228176f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.04091034 67.73767560 -0.73563857 {Pose: {Head: [-68.43999153195294f, 156.08776206254188f, -77.88924312067905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19729897 67.95678976 -0.77346436 {Pose: {Head: [125.51036581793396f, -2.4769851368291462f, 126.77868649052373f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.35740775 68.63924445 0.43355991 {Pose: {Head: [-25.581931611785592f, 40.56683769934682f, 115.04946636100894f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49288074 67.64835717 0.48363513 {Pose: {Head: [99.6498390002295f, 127.57003196331752f, 27.612223363139258f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.29680200 68.80955144 0.04659801 {Pose: {Head: [-146.1897332576637f, 76.40582475997998f, 35.53780108791899f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.19483677 67.28346325 0.05906799 {Pose: {Head: [-164.80688890809688f, 164.6176214003619f, -167.11792793642954f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.43292504 68.72705219 -0.13890629 {Pose: {Head: [-58.16515448142948f, 100.16885105091018f, 135.55049892746766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22618108 67.68756521 0.67573270 {Pose: {Head: [97.69252753603993f, 149.0401925863865f, 98.8872563580771f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.79440356 67.98517404 -0.10626539 {Pose: {Head: [-135.3628411732173f, -108.13988332896106f, -119.5371304674413f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.19162736 67.69180086 -0.68862890 {Pose: {Head: [140.77091183370894f, 0.2589379782032797f, 152.23666764636056f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.39846825 67.77115519 0.63615243 {Pose: {Head: [119.84040029424564f, 143.41304420330178f, 160.75771407867043f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23843008 67.44420013 -0.45738936 {Pose: {Head: [54.2680274540586f, 4.018256532931241f, -18.308644526904523f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.74059787 67.85775520 -0.24071356 {Pose: {Head: [-85.57595589760047f, -108.04036666908162f, -179.57751725475947f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41621169 68.75085718 0.03578924 {Pose: {Head: [11.499154970370808f, -71.51193111012145f, -141.19430935174833f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32413189 68.55634938 0.54717453 {Pose: {Head: [-93.3775483761157f, -42.44912397783695f, -24.637879204456606f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33336612 67.51367287 0.48580291 {Pose: {Head: [72.69982630099587f, 138.94107715817233f, 9.94962912366783f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66663615 67.65806985 0.20095061 {Pose: {Head: [112.43183604631325f, 104.47043135754647f, 34.21333049675404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.18382604 67.62779514 0.65237131 {Pose: {Head: [79.79348301436367f, 158.95758448361843f, 9.201959199362186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.43079370 68.73106910 -0.12562167 {Pose: {Head: [29.143590872719507f, 20.48544165219464f, -143.82133543755637f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.10833439 67.80739167 -0.75599739 {Pose: {Head: [-78.90656309117199f, -161.66421856438654f, 138.32239183779566f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.04901224 67.84114000 0.77262294 {Pose: {Head: [98.56376386024417f, 167.81634129593684f, 34.888301081006226f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23972186 68.43314534 0.67342715 {Pose: {Head: [131.8948043313282f, 154.71589359764377f, -13.213797670501801f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.79684434 68.17749430 0.01280859 {Pose: {Head: [45.811967708719195f, 92.06074797654492f, 124.45245015506448f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77629741 67.86529400 0.08258806 {Pose: {Head: [27.504381514605356f, 137.884440535354f, 81.09529000838388f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.51758006 67.81834210 0.56643310 {Pose: {Head: [97.1310118659585f, 136.08264207069283f, 137.12260292849822f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.35971456 68.77835155 -0.08068862 {Pose: {Head: [69.08064460605968f, -82.4300373715312f, 104.04429358363484f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22970682 67.30324922 -0.13828119 {Pose: {Head: [-176.14235879572695f, 50.60335310708719f, -175.42147491331312f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69459692 68.38130629 -0.25346857 {Pose: {Head: [93.50276695133819f, -70.87904903606729f, 41.59311938719651f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77439261 68.16340854 0.19616881 {Pose: {Head: [-143.2293696023765f, 34.59096385812674f, -72.60013710689088f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80167005 68.12657935 -0.03959317 {Pose: {Head: [-163.69350503533875f, 29.852435981850263f, 83.8108286430651f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41625470 67.91780342 -0.67390176 {Pose: {Head: [-39.68290462074728f, -166.8959205138215f, -49.97870411726825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69946847 67.76950065 0.27063609 {Pose: {Head: [-2.8143814257975563f, -27.9812895147613f, 78.20134233150898f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67041363 68.50565218 -0.05010351 {Pose: {Head: [8.885337348820732f, 109.63548723439524f, -133.52900862821434f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77770286 67.88937437 -0.11642351 {Pose: {Head: [160.9593681025308f, -76.5985510270828f, -64.72161401817017f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.76466267 68.31249136 0.03382277 {Pose: {Head: [-91.4576990379139f, -87.42092441183081f, -140.86212420293444f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79940188 67.97837966 0.04721285 {Pose: {Head: [-168.61471707171367f, -114.36412409688906f, 103.45924183082273f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67811646 68.41990766 0.24650859 {Pose: {Head: [138.3010062685048f, -110.43672056219285f, 121.86623003842963f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.24603322 68.34299498 0.71353968 {Pose: {Head: [-57.02141661017366f, -24.349562733373546f, -161.31737160053913f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72875963 68.34559749 0.19264960 {Pose: {Head: [37.141770236784104f, -142.365026418029f, 100.27641044854492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.05797423 68.74231315 -0.42759997 {Pose: {Head: [79.4364909359655f, -52.12468305142246f, 131.18919255950138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71177178 67.69674999 0.08919927 {Pose: {Head: [-0.004121154064806732f, -70.67809297304171f, -44.2670197972189f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.15954291 67.27351858 0.02007593 {Pose: {Head: [9.169750393446936f, -82.05107571325348f, 21.721030793572986f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34210010 68.79031787 0.03996666 {Pose: {Head: [-165.36334621393723f, -125.36257151112365f, 29.19072841049139f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.63727195 67.57036714 0.00619398 {Pose: {Head: [63.35447016441287f, 90.63682184294642f, 96.11901308642399f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55321843 67.88353838 -0.55701953 {Pose: {Head: [-97.15123078309239f, 140.7504370845205f, -56.41747865890881f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44701593 68.49205139 -0.51382003 {Pose: {Head: [158.20176303032042f, 15.02692895461287f, 33.28570199499444f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.26136505 67.43957299 -0.43817680 {Pose: {Head: [165.75291722420133f, 12.004111951909486f, 149.31073987294457f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38617735 68.53420620 0.52603134 {Pose: {Head: [-23.70853674092666f, -17.600396463899262f, -124.80718654869007f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.44558426 67.55435259 -0.43770942 {Pose: {Head: [166.6119847484109f, -1.6495665219489641f, -137.68442296763521f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55722336 68.05390035 0.58118571 {Pose: {Head: [-58.720627151039295f, -42.509500855744065f, 162.04461614108138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.48001476 68.38179104 -0.56212786 {Pose: {Head: [-27.853174409316328f, 161.48857659223523f, 104.57622538192965f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78325894 67.99101189 -0.17246314 {Pose: {Head: [-128.66865164805688f, -114.0007818084535f, 65.71108915901723f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.43602637 68.72891598 -0.11882512 {Pose: {Head: [-63.017800164783516f, -98.5585542092276f, -64.31212895688203f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.57569925 68.55488060 -0.27291092 {Pose: {Head: [-135.4069467473607f, -143.2157711434106f, 33.83468847433394f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32428257 68.70403264 0.36280207 {Pose: {Head: [142.74452039710945f, -122.57456303016029f, 78.9978164199854f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17198796 68.64915054 0.52403238 {Pose: {Head: [107.35201958816022f, -130.6390431981587f, 109.24370657883344f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.09980138 67.27229796 -0.11819089 {Pose: {Head: [28.376032401842377f, -16.79080773099697f, 4.631922268843418f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.63196740 68.03204349 0.49803440 {Pose: {Head: [129.91917379895622f, 131.28080565433095f, 29.0435778614575f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.51547588 67.44426007 0.02031411 {Pose: {Head: [-71.86624918372196f, 88.55390733920925f, -51.60263992732466f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.29064466 68.24818388 0.72759593 {Pose: {Head: [134.60046786917013f, 175.86032253341347f, 48.64404913739005f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.01750217 68.86361946 0.07905660 {Pose: {Head: [-147.91978084347122f, -63.07761256502019f, -9.951091518386272f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.17861773 67.92972826 -0.77383204 {Pose: {Head: [-85.45606284371227f, 174.26969643482312f, -106.20412800672644f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34945213 67.33722644 -0.01449590 {Pose: {Head: [145.84016519159852f, -88.7202891035686f, -152.01613594977613f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17847927 67.43773445 0.47556474 {Pose: {Head: [97.53694670097207f, 127.14648985646335f, 59.101393842555105f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.08035370 68.80849574 0.29220249 {Pose: {Head: [-20.95877398871685f, -56.04115570394996f, -150.81907834776936f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31571989 67.58294161 0.56452932 {Pose: {Head: [-114.12952207528625f, -14.179243145896862f, 132.25700052967295f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61330255 68.53222685 0.22707999 {Pose: {Head: [-108.74089055497447f, -68.93992284561864f, 2.789626510426064f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77955267 67.91629651 -0.13881939 {Pose: {Head: [88.0711030721715f, -79.32263968876954f, 11.206419667626442f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.00581973 67.29412830 0.24066516 {Pose: {Head: [42.40792901284901f, -140.32279113549896f, -15.493210219510178f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.14140531 67.35266204 0.35282186 {Pose: {Head: [45.61689880943268f, 175.8746697298547f, 13.281147692480282f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.08237038 67.69135405 0.70979889 {Pose: {Head: [113.88705152088659f, 152.13379199249616f, 111.71568124141038f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64494463 67.59083886 -0.09965361 {Pose: {Head: [-81.84576699239332f, -97.25319481939458f, 47.67067032092348f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.24516900 67.47526499 0.49335167 {Pose: {Head: [-101.8585106422818f, 44.114697827487824f, -153.92453932074247f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64908504 67.81293264 0.40589826 {Pose: {Head: [122.00413323540117f, 121.07971838014058f, 35.48371119646221f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.08172356 68.86321793 -0.02281910 {Pose: {Head: [118.94573914707475f, 88.35398407051382f, -86.43464295281505f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.02298763 68.86702633 -0.02361393 {Pose: {Head: [22.437362986910276f, 54.30093864170118f, -179.2965387035238f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.07436460 67.97368801 -0.79682557 {Pose: {Head: [103.91729324590376f, -6.060449061857033f, -6.975407979361305f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.10125730 67.96208336 0.79247215 {Pose: {Head: [-60.291237785658865f, -1.0049193442706539f, 50.8326864110962f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.43774254 68.60128881 -0.40796660 {Pose: {Head: [-57.15338740611542f, -121.37295576327483f, -144.55666375992493f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.51369108 68.05659779 -0.62002846 {Pose: {Head: [129.79861414248364f, -34.84333851020839f, -33.498036527949495f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.36704003 67.35147895 -0.08988514 {Pose: {Head: [-125.24632227022327f, -101.16715038583317f, 172.62058248485573f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.07683913 67.29307942 0.22458045 {Pose: {Head: [67.66339796398644f, 112.00486329865403f, 51.64888048395541f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.27272919 68.81971509 0.02434642 {Pose: {Head: [12.242026347954003f, 76.26157082911693f, -167.29977108001825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51552950 68.67866159 -0.05406373 {Pose: {Head: [5.115776679108564f, 105.61907143903373f, -154.01018233702612f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64172495 68.50326155 -0.20558939 {Pose: {Head: [141.521254402904f, -72.48473435788797f, 112.31849373629409f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.09360546 67.66196315 0.69221161 {Pose: {Head: [137.08647477217812f, 165.8001458307598f, 141.64311265671336f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72310013 68.37384493 -0.16893546 {Pose: {Head: [-148.32701551404702f, -178.2954003546961f, -67.07064404946927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77944762 68.24345360 0.08981009 {Pose: {Head: [-6.1875271436227575f, 75.12032231984246f, 78.08234562900415f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64699648 67.85611236 -0.43260646 {Pose: {Head: [153.1658476269061f, 42.09648619163223f, 72.55668238676088f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37683190 67.68119084 -0.60079090 {Pose: {Head: [109.05578143570548f, -41.74062725977434f, -133.90941634681363f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.26812820 67.30913835 -0.09435120 {Pose: {Head: [-7.6814509729674105f, 104.83400779111469f, -46.0466595256404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.41661050 67.82829287 0.64802112 {Pose: {Head: [128.05991541219893f, 148.06684572316493f, -177.02151153994646f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.25656067 68.23342704 0.74384758 {Pose: {Head: [-76.229554571952f, 21.79250758083472f, 18.405477241728967f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.08014085 67.31795505 -0.29593737 {Pose: {Head: [128.39939896761095f, -67.14848148882994f, -116.46446156076688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.75853832 68.32728384 -0.05345831 {Pose: {Head: [178.28872983645644f, -79.45353614923641f, -49.817414549928046f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.20663682 68.31865452 0.73487056 {Pose: {Head: [-50.462639192353095f, -13.806229450484013f, 174.38582167432648f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.60241095 67.52822507 0.00008456 {Pose: {Head: [33.66155646340293f, -90.0246904188309f, 34.325400807098084f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65195450 67.96910666 0.46322961 {Pose: {Head: [-112.78896907167784f, -38.88756014096385f, 63.59178967749169f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.22815668 68.10416629 -0.77107529 {Pose: {Head: [126.26321118270315f, -1.0824557051439943f, -76.04907706148525f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72155050 67.70573793 -0.02084131 {Pose: {Head: [43.22916946991273f, -86.30385528650785f, 40.06172054651639f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.42316441 68.69185386 0.27054436 {Pose: {Head: [49.49578965889006f, -132.3168519863565f, -169.15145249710483f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48097695 68.70273538 -0.08431187 {Pose: {Head: [-154.03058608164469f, 159.63375556389815f, 39.15572536091309f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.30583052 67.38377820 0.30684373 {Pose: {Head: [-68.51532790873186f, -67.58620006807331f, 112.17071870256385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69025854 67.80195942 -0.32250646 {Pose: {Head: [48.80608183389333f, -34.94261914925392f, 51.537063516092445f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75082722 68.19906971 0.25681874 {Pose: {Head: [74.1915092122591f, -113.02413578925416f, -152.6703299671839f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31118744 68.73945990 0.30534624 {Pose: {Head: [-3.6168512943785376f, 15.492658368572032f, -161.8353500702772f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37296350 67.35062090 0.04974965 {Pose: {Head: [-135.50689051447173f, 81.57324337277372f, 177.0488989183747f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69098490 68.47403169 -0.03911769 {Pose: {Head: [-163.38983799905958f, 19.070356621221343f, -60.18657414325778f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.06519670 67.26063514 -0.03332866 {Pose: {Head: [44.46395636034052f, 84.35974605724789f, 29.44959541527984f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.18092178 67.78155855 -0.73258984 {Pose: {Head: [120.39839653535385f, 22.1260439312306f, 149.7332801809325f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.11347714 68.85878757 -0.03738584 {Pose: {Head: [16.207835087668556f, 142.6416556314521f, 169.85603200004763f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.06488355 67.26987242 0.12601708 {Pose: {Head: [-151.4348156440423f, -1.81560105733948f, -175.60806143674182f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.56334714 67.72954119 -0.46917703 {Pose: {Head: [71.16856710473954f, 41.979353142538685f, 99.5883216323799f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23154085 67.29158474 0.02066784 {Pose: {Head: [17.88543503022223f, 28.339625293519248f, 15.923928286305982f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.02478827 68.79940895 -0.32357286 {Pose: {Head: [160.12504286897348f, -50.751520034784775f, 30.563267543491744f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.11121398 67.30147854 -0.23838297 {Pose: {Head: [-143.09341207398984f, -173.10962152638885f, -173.832297037321f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51015046 68.35761127 -0.54863877 {Pose: {Head: [-42.773964821891944f, 140.29560223561649f, -170.67026936555254f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64248482 68.18516958 0.46958928 {Pose: {Head: [160.96794991953448f, -159.23137565385537f, 94.98971355622984f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.25526687 68.32334878 -0.71773630 {Pose: {Head: [88.40086490297715f, -17.100007585801144f, -172.8480197685922f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56981986 67.59446799 0.32341927 {Pose: {Head: [175.30349667724684f, 167.91366328097484f, 124.00955939799356f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.55165753 67.50840265 -0.19235060 {Pose: {Head: [80.93063974553701f, 74.20767544547769f, 105.31100263809485f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.79083696 68.06801030 0.15131157 {Pose: {Head: [121.95256198900826f, -101.09306466783349f, 166.97630478275383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.39058703 68.53267111 0.52414651 {Pose: {Head: [-99.05234961291093f, 42.14238208356964f, 11.175578827843085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.04921121 67.25974233 0.03882057 {Pose: {Head: [-163.35081755314985f, 161.90013186634846f, 175.58804442140288f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.61893004 68.41794397 0.37273831 {Pose: {Head: [-57.096361567224825f, 61.59090034431564f, 44.96397737706672f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17454659 67.27650103 0.00936783 {Pose: {Head: [3.6352177645468675f, -87.5692904656575f, 3.387297177741982f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40936781 67.45354359 0.33157012 {Pose: {Head: [173.2027340070145f, -158.06757535214308f, 156.572594734756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31163868 68.77243961 0.21729185 {Pose: {Head: [153.82533302682066f, -112.13939082153078f, 67.23763923111967f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66007725 67.60136721 0.00179898 {Pose: {Head: [20.17493307738251f, 101.94822709625309f, -54.45674468630766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.20925983 68.83170455 0.11350479 {Pose: {Head: [42.69244451957642f, 111.02456879991013f, -173.4752080662f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.08886940 67.34998841 0.36438733 {Pose: {Head: [-119.72025444788538f, -46.08006945694264f, 155.30777230326672f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.06130831 68.52846889 0.65380650 {Pose: {Head: [142.5388238734299f, -165.46152616479557f, 28.642667122428847f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.23704105 68.67961051 -0.45971166 {Pose: {Head: [163.87037156227078f, 11.843394369068651f, -29.397701464003624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77501505 68.27108559 0.06474855 {Pose: {Head: [28.40469929370749f, 121.51946806596366f, -97.50445486101485f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.72596722 68.08688735 0.34745576 {Pose: {Head: [85.88662088725096f, 118.10902136328241f, 155.4984926353473f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.06199519 67.39848580 -0.45120993 {Pose: {Head: [67.58332238397998f, 41.08505783542142f, 41.484130871850624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.70924042 68.41988042 -0.13268728 {Pose: {Head: [-5.344098203906604f, -113.04016719317964f, -93.61241766766301f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.09473671 67.32381448 0.30613284 {Pose: {Head: [51.742846518657295f, 135.5406700073757f, 16.481131173704593f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.34065123 68.16776622 -0.72195874 {Pose: {Head: [-45.50111367444219f, -171.43438999382715f, 124.92950654461357f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.52112749 68.67188859 -0.07362299 {Pose: {Head: [3.9903699763240574f, 109.92106338074662f, 124.7879256632323f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.21241423 67.34494382 0.29722379 {Pose: {Head: [42.316869731399386f, 162.57870020423564f, -9.330614721924535f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.37814458 67.79899861 0.66024416 {Pose: {Head: [141.61232892445798f, 165.34902728540501f, -146.8635188871277f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69192396 68.46511709 0.08654114 {Pose: {Head: [27.901473053582034f, -137.7787514829723f, 114.56477042547584f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.45602377 68.57928906 0.41631724 {Pose: {Head: [132.17110944808803f, 124.06268845734574f, -104.73112915427315f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.37568558 68.10285008 0.71104211 {Pose: {Head: [-51.10836791240259f, 20.63499024909001f, 51.00551137157981f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.58083618 67.52248821 -0.13915911 {Pose: {Head: [-150.13803365655974f, 165.03291895247918f, -130.22544315233873f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51150330 68.05023795 0.62174164 {Pose: {Head: [144.77247579413026f, 160.93171613094896f, 66.53634737375832f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.69050883 67.94859981 0.39821220 {Pose: {Head: [153.18158746208346f, -133.0943607195482f, -61.90923006786186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.77124949 67.89136666 0.15567999 {Pose: {Head: [-52.206294939611176f, 78.25429579946247f, 6.08984139535659f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.06007289 68.34561677 -0.75138858 {Pose: {Head: [126.70574771750249f, -12.422566817545304f, 46.8610925293527f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.62705204 67.84382035 0.45533900 {Pose: {Head: [-49.39506590554448f, -52.704491006095814f, 134.95885061640774f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.45772049 68.19274730 -0.64952001 {Pose: {Head: [-45.02884539313081f, -153.26320728371712f, -62.44783928376863f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.35094615 67.44243627 -0.37510856 {Pose: {Head: [51.38365278172677f, 27.94709900715123f, 45.72811919520025f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.05465282 67.36175281 -0.39282961 {Pose: {Head: [-129.8190422247563f, -163.277887390961f, 165.874076863394f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.32336741 67.32514172 -0.00921636 {Pose: {Head: [-152.80150250509217f, -94.9377045372828f, -163.93408906611802f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77350329 67.89558092 -0.14892728 {Pose: {Head: [-112.6280981161056f, 104.45440581325823f, 149.0744707526354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.50612400 68.58148771 -0.35048383 {Pose: {Head: [-107.64339602105969f, -123.12476384042586f, -92.09388885202706f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.44730003 68.73184834 -0.01562495 {Pose: {Head: [-107.94873557435328f, -91.40166656511597f, -86.23968487766727f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.43489732 67.40024795 -0.14364959 {Pose: {Head: [-171.55243707621693f, -22.193335768633602f, -142.4654427307844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47767554 68.48937352 -0.48780502 {Pose: {Head: [151.55036709064774f, -35.39994874775965f, 80.97566678035504f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34189798 67.73905959 -0.65333049 {Pose: {Head: [-99.45987660239525f, -158.10238378760803f, 99.49553756379477f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78657300 67.89030452 0.00054020 {Pose: {Head: [69.73007319509972f, 90.05005146856206f, -27.478227861143793f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.63145470 67.57687201 -0.11738432 {Pose: {Head: [33.77640173261231f, -53.59601546347509f, -63.96513071901571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69910229 68.09740606 0.39797765 {Pose: {Head: [-97.1675408302606f, 56.401587641268236f, 145.9903854401454f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.80109936 67.98230361 0.01253040 {Pose: {Head: [-70.95365486554363f, -89.10830145279184f, 174.7935987159244f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.25639959 68.75657098 -0.31760571 {Pose: {Head: [-3.7446746326117615f, -175.6813648770663f, -157.86746028366804f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65271120 68.21631457 0.44571047 {Pose: {Head: [-69.01412806714481f, 56.37797736613822f, 168.4561557556626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28072881 67.52499679 -0.52974550 {Pose: {Head: [79.99840321395376f, 40.85756116951009f, 21.500430110985633f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



