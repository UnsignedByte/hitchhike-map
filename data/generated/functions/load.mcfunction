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
summon armor_stand 2.01664729 65.70924185 2.22933262 {Pose: {Head: [-135.74816538714546f, -0.381972623526881f, -1.5517674994389932f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47309844 65.28036740 1.80774305 {Pose: {Head: [-135.51885629514186f, -6.914804730101029f, 5.900961029561632f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.95249770 64.07612171 0.52739546 {Pose: {Head: [-139.99727376281675f, 3.8496005506990763f, -5.559924993453003f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.08212197 65.16841146 1.69481304 {Pose: {Head: [-136.78436748798228f, -3.45342804320761f, 4.618719854696106f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.89563241 64.12442656 0.37299981 {Pose: {Head: [-147.44242033361755f, 1.1151931652712497f, -3.4405367159106506f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.02298979 65.52208484 1.91483308 {Pose: {Head: [-140.27729570802202f, -0.023691890147291155f, -2.347709623177255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.14102493 65.80926897 2.34199173 {Pose: {Head: [-135.24085533154616f, 10.05262414797218f, -20.144525732369296f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.27799143 64.57609569 1.10758141 {Pose: {Head: [-136.2219704568966f, -2.3067189588530486f, 2.211002066285269f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.03811495 64.43235320 0.94597371 {Pose: {Head: [-136.9989358761942f, 0.5050455026259408f, -1.2738531366947f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.81087367 64.08164253 0.44412466 {Pose: {Head: [-143.09197779632882f, 0.04630534509421914f, -3.138794184376689f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.56633262 65.05033071 0.97890378 {Pose: {Head: [-159.74614618861222f, 4.301329421656123f, -3.2026315863945514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68256479 65.28470601 1.68525366 {Pose: {Head: [-140.2663930674393f, -0.8711671523002585f, -0.7200407268076117f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.57811620 64.13141703 0.40118905 {Pose: {Head: [-144.99521912975484f, 0.15262237053815023f, -0.5665832783682672f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.54688224 64.17001317 0.73882149 {Pose: {Head: [-133.7610319964045f, 2.479150552954276f, -1.9195520391663006f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68711438 64.17655688 0.69127871 {Pose: {Head: [-136.20767213621392f, -0.0644267264455547f, -0.19395720470445874f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.20470465 65.10592401 1.39943208 {Pose: {Head: [-145.10956577735436f, 9.183249699668723f, -10.167913797576364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.60523851 64.10107427 0.47410042 {Pose: {Head: [-141.39459009972055f, -0.11844375950285606f, -0.6469599507080123f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.26349536 66.23243861 2.59297525 {Pose: {Head: [-140.9687564147051f, 6.440909053527975f, -3.328864944561828f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.63990313 65.01306991 1.53048634 {Pose: {Head: [-135.6814186573612f, -2.236100759707461f, 2.2168488809241f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.41632392 66.11793268 2.44671204 {Pose: {Head: [-142.66685267428815f, 12.158241417771858f, -10.982964762092285f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.49989906 65.75272005 2.28218410 {Pose: {Head: [-135.01550507839187f, 0.06248948822857841f, -0.011832801490824926f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.60678481 66.23835803 2.77942073 {Pose: {Head: [-134.73009920733503f, -5.624227861847913f, 5.604405143468825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.05874524 64.18038362 1.37407707 {Pose: {Head: [-100.57093146187769f, -80.58264156208851f, 45.99319028657597f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.43982706 64.18765653 0.42079057 {Pose: {Head: [-144.9925056829783f, -3.402804217053222f, 2.7687501562149817f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.96186635 65.46543559 1.99913626 {Pose: {Head: [-135.87665061540025f, -28.652676130342623f, 24.3133061856958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33156177 66.14333494 2.69440038 {Pose: {Head: [-132.8845528791199f, 15.39038984002077f, -14.795482103431809f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.95403918 64.57512218 0.88090404 {Pose: {Head: [-144.06268656535764f, 4.026201055612715f, -4.748201938577775f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.50948073 64.54014940 0.84489900 {Pose: {Head: [-143.52359476516432f, 1.5317492877873886f, -7.520114695534623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.89161362 64.20306011 0.39898992 {Pose: {Head: [-146.582692587343f, 0.9055554156299419f, -4.879036915095852f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.83805554 64.17286887 -0.28767234 {Pose: {Head: [179.08299235905062f, 0.16751871847925845f, -2.733504218338036f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44625162 64.58498372 0.16327839 {Pose: {Head: [-177.11908991494747f, 2.165076142831129f, -1.4191373855309104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.67042913 64.94537937 1.24290987 {Pose: {Head: [-143.98231899136235f, 5.602817885094253f, -4.443948264089409f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.27734008 64.12843250 0.41637697 {Pose: {Head: [-144.16133689970107f, 0.09786151571119531f, 0.4591561931183028f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.06761095 64.18767844 0.38788656 {Pose: {Head: [-145.40460135127813f, 0.9926089925988217f, 1.1595245935899519f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.54276504 64.77458382 1.32501074 {Pose: {Head: [-135.37563357488418f, -8.662066112455413f, 9.37927405164624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.12401934 64.33302720 -0.23316456 {Pose: {Head: [-178.70959409781835f, -2.081057653974614f, -11.329102378809164f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68175389 64.70928438 0.94059363 {Pose: {Head: [-147.21846970090272f, -0.5337690515709624f, -0.5906968496476745f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.15639973 65.18139593 1.59189736 {Pose: {Head: [-138.29224104579194f, -13.743050638148024f, 7.8832217329864624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.67406184 64.79674984 0.93371616 {Pose: {Head: [-146.49521695023262f, -2.576823353920077f, -1.627953333691761f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.32601035 65.90282074 2.49584033 {Pose: {Head: [-133.43459817152922f, 14.833688614218014f, -23.64241129705439f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.67931790 64.72833809 0.92289528 {Pose: {Head: [-146.59961045794086f, -1.426713221630276f, -0.927641097146769f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.69212133 64.68876239 0.57686571 {Pose: {Head: [-155.9117956755421f, 0.5570736150210512f, 0.40126609068258107f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76520260 65.18181518 1.64220321 {Pose: {Head: [-138.01144497806575f, -19.398852052723424f, 19.545247078596688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32057152 65.26440303 1.53420857 {Pose: {Head: [-142.63614546345545f, 1.3152491477950468f, 1.02234232934185f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40895545 64.66295882 1.07718462 {Pose: {Head: [-139.59101031424237f, 2.32033058444304f, -2.129317553452749f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.69726883 64.19160598 0.40977579 {Pose: {Head: [-145.53201365442553f, -0.3068715731909908f, 1.008889329642229f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.56210520 65.89058830 2.19249213 {Pose: {Head: [-143.9222984120571f, 5.114507444089611f, -5.11608899248507f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48262962 65.17084626 1.42823407 {Pose: {Head: [-142.65680824466912f, 4.15083694109704f, -0.747611685700658f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68837468 65.66525459 1.96743409 {Pose: {Head: [-144.05149352112983f, -0.4674288621660632f, 0.062290986389492826f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68686102 64.22299966 0.38994113 {Pose: {Head: [-146.14515060038417f, -0.122875014534521f, -0.08301658550065544f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.25849052 65.67485384 2.01308353 {Pose: {Head: [-140.40321732100705f, -9.297578480772918f, 0.42203599808753567f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32542816 64.77905762 1.07697267 {Pose: {Head: [-141.99985877933588f, 2.3327402546494f, 1.7481783097296402f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.74253850 64.81199033 1.13975933 {Pose: {Head: [-142.50747731678052f, -9.947235084163271f, 15.090700055120982f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.28166451 64.64590769 0.82595327 {Pose: {Head: [-146.14127230780122f, -3.7783396506928155f, -3.350595530706933f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32175519 65.17327038 1.19491571 {Pose: {Head: [-147.99212184220215f, 1.7516890124606503f, 1.0690282683208607f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32419107 65.30427116 1.37313289 {Pose: {Head: [-147.45147579880017f, 1.5317298130140389f, 1.1219772740914893f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.66508846 64.58965545 0.80379281 {Pose: {Head: [-145.21673180156256f, 3.4761297086716336f, -4.830563328111146f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32061381 64.28905587 0.22029748 {Pose: {Head: [-159.62753317295355f, 2.8405960608440686f, 0.2965602782074173f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.42008771 65.13192331 1.16842169 {Pose: {Head: [-155.3837994959381f, 8.141206132440567f, -8.026489484049655f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.84345553 64.75073295 0.89004793 {Pose: {Head: [-144.53751913392065f, 2.2273566059210603f, -1.2099894000981395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.50516029 63.99282798 1.07386718 {Pose: {Head: [-118.09144760826132f, -49.578476084461755f, 47.02364414412822f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.56234324 66.12223873 2.80248796 {Pose: {Head: [-130.8906731019103f, 22.77949510954247f, -21.31488522353055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.38866969 65.56634787 2.28338583 {Pose: {Head: [-126.38839532012139f, 40.35636730140041f, -36.24066206438173f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.28908692 65.67455376 1.96669119 {Pose: {Head: [-140.77441694892255f, -12.447186626600923f, 4.30489718517815f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.28978144 64.27737637 0.40743390 {Pose: {Head: [-147.0659417109167f, 12.980820105312393f, -19.51401876689038f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.69177835 65.15250695 1.81047600 {Pose: {Head: [-132.21027826901647f, 26.6007986019691f, -31.4167869913584f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31275442 64.59745257 0.14355513 {Pose: {Head: [-179.49982642056005f, 0.7142551492719134f, -0.17367639530240536f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.12539231 65.00307690 1.19379218 {Pose: {Head: [-143.78664958717582f, 5.169600391859365f, -6.001146874021224f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.87099893 64.76171384 0.98076196 {Pose: {Head: [-144.46568836809473f, 7.066708876293778f, -11.269373385218806f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31994946 64.67383576 0.12545736 {Pose: {Head: [-177.43925992210447f, 2.7131226848786816f, -0.18732613295889972f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.07938325 64.31792931 0.33943889 {Pose: {Head: [-150.4130587148393f, 12.264899930979611f, -21.8300204411184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.92195870 65.64471636 1.58728870 {Pose: {Head: [-145.14917063728814f, 2.452518085150349f, 11.167528596463523f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65694704 65.19797175 1.46733093 {Pose: {Head: [-142.57345834522246f, 22.271289862485382f, -24.272438709059617f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.12615124 64.64056422 -0.25210264 {Pose: {Head: [-179.38688196926438f, 1.0030901850311238f, 10.010028185829945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51464953 64.93710506 0.74630974 {Pose: {Head: [-156.84942175903612f, -3.2979737256450288f, 2.6584288918631724f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31077246 64.73276636 0.61138044 {Pose: {Head: [-158.52549569861628f, -0.2072500079624181f, -0.09444502004667446f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.30573790 65.13573383 1.14514298 {Pose: {Head: [-143.8898030901685f, -1.2450265027855294f, -0.8440071771774663f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.33006460 64.52790246 0.51812898 {Pose: {Head: [-157.47754733138825f, -11.637127532115397f, 18.50095325786709f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.72197453 65.50302561 1.78668688 {Pose: {Head: [-141.90803155128123f, 6.135400052319528f, -10.560011430816418f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.91621660 64.37010769 -0.16469055 {Pose: {Head: [-177.03207838814293f, -2.949473611691987f, 7.525350336544982f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.96272246 65.14098105 1.06446574 {Pose: {Head: [-154.02991962111992f, 10.715762217216062f, 0.024884866590950475f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.30084105 65.19120998 1.11844091 {Pose: {Head: [-148.05257507074867f, 1.5726324187753018f, 0.14351740268084107f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.31888037 65.41294622 1.67785855 {Pose: {Head: [-141.38761176349996f, -16.101277305336968f, 26.247286880273666f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31508389 64.21459396 -0.16173178 {Pose: {Head: [-176.99753697340617f, 0.08580782779884134f, 0.27083627007486344f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.35337878 64.59506474 0.50406324 {Pose: {Head: [-160.763894823359f, -9.613026541594895f, 12.934040202706695f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.41801969 64.70020172 0.78389386 {Pose: {Head: [-150.87174695699238f, -0.5179324584952457f, -2.6166622782948123f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.46952405 64.35311464 0.22083078 {Pose: {Head: [-159.2127413174572f, 0.5839170567941971f, 8.489530702437623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.28338411 65.67900273 1.93044729 {Pose: {Head: [-141.06003277447365f, -14.63584132522177f, 7.120384653258417f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.98110384 64.66478401 0.57340241 {Pose: {Head: [-156.69465791475608f, 2.4742806089513767f, -1.9858441438712622f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.68521145 65.32718142 1.47638103 {Pose: {Head: [-144.4097691370294f, 14.322535297868738f, -17.860711047430154f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68930857 64.96152261 0.96665192 {Pose: {Head: [-145.73560809081343f, 0.19581185822696168f, 0.14103864012541462f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.95570476 64.80937203 0.58495856 {Pose: {Head: [-158.54495312035726f, -7.348153541149572f, 7.63974479745939f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.34468873 65.60301248 1.91819664 {Pose: {Head: [-137.52404929580845f, 8.58838869151823f, -8.319221353624876f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75544394 65.08340266 1.11113490 {Pose: {Head: [-146.99915640394522f, -3.030555226755326f, 0.9646369693050348f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31014119 64.62304190 0.16172521 {Pose: {Head: [179.83275191881066f, -0.3308173529784555f, -0.03516264596142161f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.49368279 65.49917175 1.64230534 {Pose: {Head: [-145.39456257467714f, 8.897635788096878f, -13.223860166919177f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.52987483 65.09157598 1.03038449 {Pose: {Head: [-159.54329949104311f, 7.262046172155488f, -7.408619662003044f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.07659723 64.71385066 0.49703970 {Pose: {Head: [-159.28046051192447f, 2.101941235566487f, 1.0331762600074585f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.12599534 65.25368900 1.45061383 {Pose: {Head: [-145.63115083203286f, 11.303974710006987f, -12.676688643875897f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.21955444 64.20234460 0.33355304 {Pose: {Head: [-151.58396904475643f, -13.542907524412998f, 37.764799951816f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.81833056 65.66366647 1.80667397 {Pose: {Head: [-144.47194078648562f, -0.38469271927199195f, 0.3728564465618581f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51887230 64.24190089 -0.17061920 {Pose: {Head: [-175.15077237487546f, 1.5271329478165716f, -11.413825296389831f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68681160 64.65467078 0.51836180 {Pose: {Head: [-150.53492942604117f, -0.9336370116702246f, -0.3124825405188597f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.69324160 64.77952592 0.58225628 {Pose: {Head: [-155.68133665499982f, 0.6676400662772897f, 0.39607586346384716f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.38899134 65.46226345 1.52545000 {Pose: {Head: [-145.99238795341344f, 6.750501587545999f, -3.7328143180744484f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.09374481 64.78094718 0.43034352 {Pose: {Head: [-160.58312140772145f, 2.8983045928810642f, 2.1667646464151105f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68230167 64.50168319 0.22974245 {Pose: {Head: [-159.14319314273453f, -1.3766984922166694f, 18.077673445012547f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.92486374 64.50431060 -0.13547746 {Pose: {Head: [-177.03850348109586f, 1.15321801487641f, -7.73415238132713f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.20562591 65.57895029 1.89429929 {Pose: {Head: [-139.23143169563778f, -22.804098896365183f, 16.68687168600206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.44219643 64.29583994 0.41046369 {Pose: {Head: [-147.31384858220426f, 0.652907870613028f, 1.018877161008787f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.69561604 64.51819341 0.29482308 {Pose: {Head: [-154.26520595473315f, 2.0145857126854896f, 0.7727941885758772f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.07099238 64.93361896 0.92020982 {Pose: {Head: [-147.2061029469454f, 1.0468903471772983f, 0.8083534922982506f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31370458 65.33019521 1.34880057 {Pose: {Head: [-147.1948336346878f, 2.0428161782440117f, 0.12732202615548102f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.09556882 65.13850703 1.35733208 {Pose: {Head: [-140.4835680753161f, 24.740413535249502f, -24.05315705769992f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.13381198 65.07835362 0.69472543 {Pose: {Head: [-159.2175719380925f, 3.7732826457701765f, -19.089753966660034f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.71100682 65.22780032 0.83934223 {Pose: {Head: [-154.42512552766442f, 4.547847674691604f, -1.029811380437935f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.94597681 64.72081484 0.52721429 {Pose: {Head: [-158.9394391430396f, 0.7014931657481109f, 5.782198362508083f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.61200093 64.47521118 0.68050835 {Pose: {Head: [-153.2491354103303f, 16.49275553333246f, -46.62748472848496f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.17073312 65.54454724 1.51179533 {Pose: {Head: [-145.9252249044741f, 8.568647461561667f, -3.793281331163649f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.09063219 64.76887300 0.45844632 {Pose: {Head: [-160.94575898971348f, 3.0425582217409786f, 2.038438129884766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.49729703 65.12177292 0.82570675 {Pose: {Head: [-143.2836046126151f, 5.2047919269797704f, -1.1405976826478663f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.51902135 64.69335747 0.73255515 {Pose: {Head: [-147.6344912193065f, 25.84424724522959f, -44.03595897231122f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.15047739 64.99573123 1.03169477 {Pose: {Head: [-146.13036045355415f, 1.8588816186206774f, -21.709870528563314f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.29042136 64.22378308 -0.19823274 {Pose: {Head: [-178.01997153482955f, 2.433633317356395f, -4.069442151180131f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.98772865 65.33270691 1.15429700 {Pose: {Head: [-148.12046813960023f, -2.270290153504354f, -3.3184533932141957f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.28637458 64.89687940 0.66798316 {Pose: {Head: [-160.89013381505055f, -6.962466631267499f, 9.339283516490966f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66867063 63.69114072 -0.00350160 {Pose: {Head: [-163.7781429353328f, 14.483070083062023f, -83.14418211100214f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.54714543 65.38847409 1.19842043 {Pose: {Head: [-158.41976978153585f, 5.155257999906973f, -2.097346256283768f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.92082524 65.24099807 1.15032602 {Pose: {Head: [-147.47255757937353f, -2.8278218970564697f, -1.8267159452873385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.72856013 65.12458470 1.05313043 {Pose: {Head: [-144.88728603736175f, -5.95632501602007f, 8.834488087686626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.23400681 65.38949051 1.44589963 {Pose: {Head: [-142.08635661144464f, 19.978934724965207f, -17.363278437449377f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66226727 65.31452107 0.84640511 {Pose: {Head: [-158.19490883853214f, -3.9956982188548578f, 4.795090799566683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.06122565 64.74439291 -0.12827915 {Pose: {Head: [-174.75647305552528f, -1.306156628369735f, 29.01168168707995f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31042996 64.88933936 0.04948475 {Pose: {Head: [-166.35172555887135f, 4.162355051027842f, -1.4943702491421826f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.83690357 64.67579571 0.33413773 {Pose: {Head: [-160.97386311228777f, 3.9595233550234563f, -1.6136766205866648f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.52530968 64.74292482 0.28314153 {Pose: {Head: [-163.59349871749887f, 6.956599441935616f, -23.56693374544786f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.01058596 64.47319466 0.64360169 {Pose: {Head: [-121.87024805002618f, 60.24102446971958f, -60.74902400979293f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.69412423 64.33167186 -0.26615638 {Pose: {Head: [179.79143393723587f, 1.3994443355570192f, -0.04288114767067384f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.38146590 64.52847296 0.45539129 {Pose: {Head: [-149.52393789480968f, 0.16733148596404557f, 14.349742995485313f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.69892981 64.41291685 -0.24362131 {Pose: {Head: [179.24819194337573f, 2.4114984375849127f, -0.009210200254445156f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.24521025 64.84906078 0.20884909 {Pose: {Head: [-179.10184663741398f, -0.6655352313096333f, -7.724392526262731f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.87791272 65.12137900 1.07278125 {Pose: {Head: [-154.24850622077278f, 11.270782157824984f, 0.07795667943470821f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77975871 64.59922795 0.25225284 {Pose: {Head: [-158.30001530963673f, -0.7650260798761693f, 16.471169690688104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.53882683 65.63307864 1.48323882 {Pose: {Head: [-143.68081076309403f, 9.145585512417444f, -3.2856586913471024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.38916328 65.19664406 1.04954891 {Pose: {Head: [-145.04532835526035f, -0.8865614633538575f, -0.6627541657335486f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.74598803 64.64703347 -0.03019512 {Pose: {Head: [-167.50845007439756f, -9.113337604898122f, 61.56905536076179f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.57552181 64.64962103 0.13821243 {Pose: {Head: [-168.41136618895558f, -0.9332425841214405f, -12.778379391578024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31002615 64.99998354 0.49339132 {Pose: {Head: [-166.38597715577143f, -0.6311964119459038f, -0.08307170000007494f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.07645108 65.08720995 0.73433258 {Pose: {Head: [-153.19116947251533f, 16.51364969430126f, -28.28448810548389f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.05910542 65.52666294 1.24582901 {Pose: {Head: [-147.86204009113547f, -8.599233059191922f, 7.192549336067812f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.28215818 65.31134696 0.68192172 {Pose: {Head: [-162.2244627726106f, -0.965653942418574f, -3.1708922395825354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.36073741 65.37467060 1.47587787 {Pose: {Head: [-126.37452450279041f, 13.363882899356412f, -11.578452848228498f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.30487304 65.34186409 1.01780236 {Pose: {Head: [-154.07963334098974f, -1.4264553891983776f, -0.7167915998301515f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.48075777 64.68304203 0.09207401 {Pose: {Head: [-170.2150491093658f, -1.7459175525879829f, 17.897563387723256f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.42410451 64.65020982 -0.23862387 {Pose: {Head: [-178.30711905717223f, 0.024106848533380607f, 0.9188514002471534f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.44467435 65.14220939 0.78707129 {Pose: {Head: [-143.51745256314044f, 5.359413344734196f, -1.3603439856082242f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.47258356 65.62935404 1.46937924 {Pose: {Head: [-141.23276581724502f, 12.369136699222887f, -7.768222876958689f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.62366820 64.92802681 0.83893146 {Pose: {Head: [-156.36535654201813f, -19.28407263794471f, 38.04744009100069f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53492382 65.50100987 1.05036543 {Pose: {Head: [-153.92820441451437f, -3.1092805504290943f, 2.781204709686991f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.91229836 64.65439655 1.49563650 {Pose: {Head: [-102.84741363147593f, 90.01013353695761f, -47.14086452246198f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.88929139 65.35005737 0.78285449 {Pose: {Head: [-153.91254230237635f, 6.487029904556764f, 2.9464978729353124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.54157384 64.61169289 0.36781733 {Pose: {Head: [-154.21244093693605f, 3.7279313410179626f, -1.739598260146032f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.14028541 64.97290055 -0.12958943 {Pose: {Head: [-176.39160743266788f, -1.862719651484255f, 7.606755694162034f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.35032946 64.63873644 -0.02924643 {Pose: {Head: [-173.85471299822387f, -0.22829138979918334f, 9.053095478893896f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37484764 65.70624973 2.03206329 {Pose: {Head: [-133.21377902358685f, -17.770094929649424f, -6.702936626315613f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.75458229 65.61788305 1.54209514 {Pose: {Head: [-143.70727671044423f, 8.20571797371218f, -2.121244766160028f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76834858 64.71925142 0.19441227 {Pose: {Head: [-161.59855473643887f, -0.5993322196145546f, 13.764335040634759f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.42929129 64.85920424 0.07514727 {Pose: {Head: [-167.00960999750185f, 2.16672678548403f, 0.7253727154225807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.61807323 64.65067229 0.31217409 {Pose: {Head: [-154.86880898785185f, 3.457137880693792f, -2.6780348692900304f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.33346211 65.05685435 0.52307058 {Pose: {Head: [-158.661377179747f, 4.345596433651724f, 10.500674431273001f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.63543730 64.81325160 0.31473528 {Pose: {Head: [-154.75256621975447f, 3.2662453714121353f, -1.9446031442750076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.63085428 64.72561794 0.31850740 {Pose: {Head: [-154.43459126201262f, 3.5576442091866936f, -2.3243378635734024f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.91939283 65.30652302 0.57430648 {Pose: {Head: [-163.51975860071227f, -2.25992718569824f, 13.119843804832819f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.98943165 64.80803762 0.09568471 {Pose: {Head: [-170.15015504836748f, -2.9186548462786632f, 0.4675057118625501f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53711570 65.08447535 0.27728039 {Pose: {Head: [-176.71203982350713f, -1.445529830240827f, 5.794137145061719f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.02079029 65.29100050 0.80501924 {Pose: {Head: [-156.30410058433822f, 0.9781942436774691f, 5.868909400778776f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68811610 65.28152040 -0.17534151 {Pose: {Head: [-175.7281505744026f, 0.0668220711555267f, 0.8840401263359623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.25115250 64.85808094 0.40752247 {Pose: {Head: [-158.95278051279934f, 7.133094064487887f, 0.27294249442103535f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.35918045 64.78605148 -0.40792284 {Pose: {Head: [137.99389808782104f, -7.206433981018781f, -39.63914662897958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.58691115 64.46142938 -0.11452969 {Pose: {Head: [-177.12693640735088f, -0.9863303026784286f, 3.3938563249641223f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71330359 64.60691194 0.05670720 {Pose: {Head: [-171.55226735044212f, 7.730295703560414f, -42.85372764408322f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.28201985 64.64623879 -0.21241520 {Pose: {Head: [143.31230239480115f, 43.49352095549036f, 30.611043760319987f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.69722185 65.14254868 1.24295293 {Pose: {Head: [153.57146638008373f, -176.48312708641737f, -8.98252328680856f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.30386271 65.21361846 0.78373709 {Pose: {Head: [-143.44132286302747f, 7.257070639198606f, -3.2836974913863894f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.34209048 64.43968386 -0.16784118 {Pose: {Head: [-178.54499806028872f, -1.2880045354729746f, 12.555208802365584f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.83302890 64.58798461 -0.07436634 {Pose: {Head: [-176.99461604628226f, -2.246960220358348f, -6.236453685878986f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.56711065 64.76112474 -0.09215074 {Pose: {Head: [-177.38176702799905f, 0.5699699496625353f, 45.79318593305633f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.66526575 64.56938562 -0.20706370 {Pose: {Head: [179.79188122789293f, 2.973272021155984f, -1.2515892909310482f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.87030805 65.34094055 0.00514568 {Pose: {Head: [-174.51797999414572f, 3.254492714107056f, 8.57062884154125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.85480777 64.70098505 1.21978822 {Pose: {Head: [-92.45054559650016f, -84.34154011122924f, 38.951975206565805f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.92825768 64.98428684 -0.19757284 {Pose: {Head: [-177.75930790923329f, 1.9416950347675004f, 19.481995446753018f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.92753677 65.71615617 2.12041743 {Pose: {Head: [-134.06715043109503f, -39.27427553564981f, 18.393787707301165f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.49617088 65.50615309 1.55916115 {Pose: {Head: [-127.27002612324428f, -13.494466421527f, 8.877189326341284f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.00667588 65.18988210 0.21116975 {Pose: {Head: [-117.24931385024301f, -111.69372754669577f, 11.430744089940266f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.88433759 65.22209748 0.47122473 {Pose: {Head: [-154.15325780611028f, 0.3269528755913218f, 11.886404448630676f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.26156215 64.95591200 0.39136145 {Pose: {Head: [-158.56063593797475f, -0.14062562399042663f, 12.950584210198203f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.28007568 65.47727246 2.20700763 {Pose: {Head: [-95.59397262889146f, 23.249960179309948f, -9.152418353909514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.60014455 64.89362162 0.30623220 {Pose: {Head: [-154.9605789207131f, 3.1788954292032927f, -1.749746453256663f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.07376829 64.56668779 -0.08681067 {Pose: {Head: [93.32274252361627f, 4.1976797656696645f, 10.56682121254585f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.34071682 65.04881995 1.00238543 {Pose: {Head: [-101.1184144911711f, -0.12731399041583408f, 32.6450944183551f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



