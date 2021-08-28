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
summon armor_stand 2.348549703520867 62.890616843010946 -0.2702387537921508 {Pose: {Head: [-5.250900048711085f, -177.32886113774677f, 5.009880067057311f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1856175660656767 65.55870149813458 2.0764726700622207 {Pose: {Head: [-134.45518650338195f, 19.671990575516844f, -16.565869733859756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.1468302408552698 65.40000463056708 1.9496533390079491 {Pose: {Head: [-133.93252237527253f, -18.793196189768427f, 20.351292339672142f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31311851661490003 65.11475237012168 1.6306670384685042 {Pose: {Head: [-137.8663403922474f, -0.2578439928506191f, -0.18217562979991372f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.686296672489926 65.12203417149644 1.6265911478073969 {Pose: {Head: [-138.17980167753947f, 0.19496543224818128f, 0.19026549430692072f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3103581777367087 64.13083301896211 0.7566949671230023 {Pose: {Head: [-133.8958935606487f, -0.663815172695723f, 0.03525234743370054f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8199370847911027 64.2020507495944 0.740557651134621 {Pose: {Head: [-136.71363827113953f, -6.896068251038615f, 8.703197954451056f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1454242930033316 64.45342083272575 0.9892140148543512 {Pose: {Head: [-138.18065438913914f, 1.5223154511458927f, 2.092994388438127f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1768286013561666 64.07259750737845 0.6727223224051456 {Pose: {Head: [-135.94181060711028f, 3.005957597678439f, -2.052918226630612f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2044394694347917 65.40218222806449 1.9917246540027 {Pose: {Head: [-133.51051403819997f, -14.548338693986397f, 15.341756096929624f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.563457108448745 65.05421457132421 1.5345912803616726 {Pose: {Head: [-137.39413930536776f, -3.9339659959922213f, 5.379104080051055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.33226452970027 63.98983310812106 0.5831420454665899 {Pose: {Head: [-136.62075627184439f, 0.04804440331606439f, 1.0293064987200562f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.10173914938335543 65.14712448116731 1.5944302510252668 {Pose: {Head: [-136.12083153700576f, -17.509665240513648f, 18.32124309700518f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6839641254439854 64.0922893933613 0.4630993566071345 {Pose: {Head: [-144.22322662757995f, 0.8528326276386468f, 0.6709788305594402f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1441057026039698 65.19071125085145 1.728358625058231 {Pose: {Head: [-137.1952008927504f, -4.658423348478944f, 9.337714347240208f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5249594958717894 64.61934457544339 1.2153944325668584 {Pose: {Head: [-135.4712318787868f, -2.618546431959234f, 5.207052091972684f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7894917247848268 64.63648975531669 1.223201441598201 {Pose: {Head: [-136.5666843998706f, 1.6939100079440255f, -0.4055251379539085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.063054931480387 63.66220470310043 0.8499243502627285 {Pose: {Head: [39.75725827541213f, -3.9494098362037837f, 5.550062178235704f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0608931541052486 65.0887566123466 1.6569894819019415 {Pose: {Head: [-134.0460439100824f, 18.755178754506264f, -17.48331578068105f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2306877865455887 65.15204706970445 1.6022077998047812 {Pose: {Head: [-139.88975140441818f, 4.822066440434627f, -3.420599743297821f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.309040284598376 63.760784972545 0.9106197537514293 {Pose: {Head: [40.56436412230732f, -0.7476090457295584f, -0.5751926296279145f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4676151605880893 64.76379895667658 1.1896289413798757 {Pose: {Head: [-137.013142224389f, -23.14607587040931f, 21.135001786265093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6893058073990197 64.22256027478012 0.5663845760428412 {Pose: {Head: [-144.96703520952877f, -1.6344895127807553f, -0.8490200921977495f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0626636015178699 65.62273458304122 2.189866589634145 {Pose: {Head: [-134.58498780124265f, -5.0125927070485865f, 8.968646424228215f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.04288222597750502 65.1232672567366 1.5166189487309254 {Pose: {Head: [-135.1521972574407f, -21.75895331885613f, 22.370617399694748f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6180343912365875 64.94317006078089 1.310668388491027 {Pose: {Head: [-141.75094973416847f, -6.655898077322016f, 3.801859617115135f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31581696293844363 64.6411922813016 1.1845793183502586 {Pose: {Head: [-137.0408717484809f, -0.5747420716353234f, -0.606992207317093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4223938876178943 64.22985495470981 0.5183342331703485 {Pose: {Head: [-144.9879946861523f, -1.3746979595094235f, 3.5764309160707626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7967801376319654 65.86863119931651 2.453781358397789 {Pose: {Head: [-128.9536431885077f, 27.133792179240515f, -24.599807351608383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7021121580258245 65.62159106799639 2.051760443009836 {Pose: {Head: [-137.4740511231373f, -7.514984226624712f, 6.50080554062827f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0115972396382251 65.93193188758448 2.444299350250732 {Pose: {Head: [-133.121839022927f, -12.12796543811337f, 15.66401201149719f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9960068644883648 64.30955606969134 0.7860874887606839 {Pose: {Head: [-139.48051157256833f, -1.1264972253367311f, 1.1701109312161775f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6710986506802272 65.56165107224263 2.0897230116714094 {Pose: {Head: [-135.2224529418862f, -0.2272839072310262f, -0.24130620055088148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9358416694065224 64.12231202773175 0.36203502108257996 {Pose: {Head: [-149.7622721335275f, 0.8029818191885483f, 0.668773843856846f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6942918766968575 64.71044210965354 0.5928719587958328 {Pose: {Head: [-154.3572601779577f, -1.5051078573498728f, -0.6631278889754271f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1928240476702123 65.63196499018184 2.012813435356742 {Pose: {Head: [-139.91015521415383f, 5.1431307184723645f, -3.2034581890048135f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9703055512538509 64.38691464503223 0.11524822563494247 {Pose: {Head: [-166.57274906750047f, 3.6782047276042817f, -1.6813900873687255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9023313921635214 65.17166778878199 1.6216669261045502 {Pose: {Head: [-140.26803693105353f, -5.722688256252681f, 5.300772464606114f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0197965559568272 64.24770144845539 0.7075426681914817 {Pose: {Head: [-139.6352718718631f, -7.063133788863453f, 7.278721067466844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5779941540801325 64.11080653402847 0.4465940258433731 {Pose: {Head: [-144.78427529824316f, 1.3891355060719688f, 2.202111532479254f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3504734114681374 64.54839515648396 1.0448871857874944 {Pose: {Head: [-139.2421277155949f, 1.6934074218565667f, -3.093474382619677f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8989625618838304 64.16094515960475 0.3119457493364009 {Pose: {Head: [-153.50352187118241f, 4.3143088955205675f, -2.538271885465886f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9839803868340861 64.81756227424181 1.1639889923661815 {Pose: {Head: [-141.67275851424108f, -3.842271784749298f, 3.554030592466627f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3145481475155912 64.18563693844878 0.7735956266932611 {Pose: {Head: [-134.06882692645198f, -0.4781553018768959f, -0.4403471353482995f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9477846594031343 64.99149964054234 1.4534007013227408 {Pose: {Head: [-138.73428909928674f, -4.403906222322552f, 3.934918372566086f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0169728056127045 64.24780448940722 0.6174530393197857 {Pose: {Head: [-143.42588741491198f, 4.198397254622934f, -2.7226164367851933f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3213273623042434 65.05817360334704 1.4688690318340663 {Pose: {Head: [-139.78872804044215f, -5.850672048681498f, 2.6741612915687676f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.620034622254021 64.68588268811175 1.1129694698454557 {Pose: {Head: [-138.70653076241163f, -6.674572525246325f, 3.2203810032802234f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7279589294122601 65.01544278248613 1.2801401111138548 {Pose: {Head: [-138.85271846051404f, 8.752234200262787f, -8.889944864558716f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3955555357039546 64.20956372443202 0.6152107693611524 {Pose: {Head: [-141.97343813995585f, 2.6147025671242634f, -3.9684157671449074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4716885124254808 65.37887632710158 1.778484035873965 {Pose: {Head: [-136.06868394906778f, -7.799942859133472f, 2.680058290205901f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2537256207727677 65.10048887061244 1.273122554222143 {Pose: {Head: [-137.5266868600871f, -1.0233198322029753f, 6.549333843131685f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.33388920912849 64.39898165039745 0.8019984954934473 {Pose: {Head: [-140.19145979554557f, -16.77404139037971f, 14.22208548059179f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4650353774381104 65.3320471799815 1.758604060300471 {Pose: {Head: [-135.22246331517374f, 10.904956308014208f, -15.346121773323938f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.699165419561407 64.2548114444817 0.5197076552408336 {Pose: {Head: [-144.87036022586466f, -0.6899310730893858f, 3.9251160763357134f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.738476379156678 66.02306469481236 2.5523881050268926 {Pose: {Head: [-134.87647390907105f, 4.40162994939181f, -4.488765078656188f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.726821803882993 64.54828013630704 0.4265653736141962 {Pose: {Head: [-156.66210170540464f, 3.2192812297612603f, -4.415142884205174f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6109294240211636 64.29670128992773 0.24732941476500891 {Pose: {Head: [-155.59307948788702f, 0.17876970814927645f, 4.152563361114698f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3758392834194764 65.32060839897363 1.641227217265631 {Pose: {Head: [-135.7941082836614f, -13.107402231727148f, 11.070282006739415f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.696107014619035 64.98306280815487 1.2900430914318397 {Pose: {Head: [-143.97469531123542f, 0.5696779526925128f, -0.7792027066853133f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7440273462888642 65.19124342371195 1.323239111249718 {Pose: {Head: [-145.14937099546566f, 2.9559904136589155f, -5.941053351043811f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2251529363287483 64.11051559900129 0.41954878117565647 {Pose: {Head: [-146.19480384393205f, 0.3529967357625643f, 3.289020626585103f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.758049125194416 65.28740892334434 1.5794060461482147 {Pose: {Head: [-136.589799852716f, -0.9784096342503023f, -2.113295564890049f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3044071352698166 64.69046634519944 1.0305347604664916 {Pose: {Head: [-140.14088965235584f, 10.98609057067617f, -20.81413591057953f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6885798314251597 64.46908415349648 0.47923314829533525 {Pose: {Head: [-151.88437379454362f, 0.03361762410224805f, -0.046189371879126945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.9198527055377217 65.01915992492184 1.2595767323027203 {Pose: {Head: [-141.85226881203334f, 14.337398887369874f, -21.82713033868848f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6162314002695375 64.80176674724989 1.0910721903413947 {Pose: {Head: [-139.8493814038531f, 15.904165931879444f, -14.705608950073856f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4167056642945165 64.36881005728029 0.8650286800051181 {Pose: {Head: [-133.0831783232116f, -12.569390032869206f, 20.14487209775193f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8085440345192563 64.93244586187093 1.2381816928378042 {Pose: {Head: [-141.39121888352398f, -11.763567382401115f, 9.33865581432971f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9110703435345731 64.7880546490395 1.0718324699894337 {Pose: {Head: [-139.9747042800262f, -11.681905008188084f, 19.66448739613404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2739439673385534 65.00534600330514 1.2695627695244054 {Pose: {Head: [-138.1294709979139f, 0.4794447831694061f, 4.694012456807529f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3555391803866312 64.18597170814037 0.28804661889213534 {Pose: {Head: [-152.86309705301517f, -1.2000194957637125f, 2.5787175171670484f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31524618950490463 64.1893907549254 0.16293043571372695 {Pose: {Head: [-160.66701681941365f, 1.4687042313672325f, -0.13654804539872356f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.717240160329497 64.68091596927955 0.9700964117277497 {Pose: {Head: [-144.06995723393527f, 0.46945394888845476f, -7.750367018918568f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.549641917185041 65.27952162089949 1.3355673016302174 {Pose: {Head: [-142.60275851945087f, -15.17468884851444f, 16.875751653108626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9506067399752375 64.90890338410611 1.084954770287506 {Pose: {Head: [-143.251360567659f, -2.4759492537786802f, 0.5781847339042658f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4469535075820148 64.30299416123256 0.8740493269061438 {Pose: {Head: [-132.89543248529546f, 3.969538826231361f, -5.969636870461843f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7739329827003356 64.79633238838453 1.0092139463019392 {Pose: {Head: [-141.84443136536214f, -17.553879728097712f, 15.190893423311604f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3114353739271403 64.2204790560636 0.30280408900639183 {Pose: {Head: [-155.97571580181946f, 1.123873086549259f, 0.3292772280841814f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3229339623941263 63.33381915669641 0.42955218554524033 {Pose: {Head: [44.481648447856664f, 0.9651958008336418f, 1.2995835975334737f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0367388356178315 65.0869760984133 1.0880125160966478 {Pose: {Head: [-147.56310806241558f, -12.022251803492487f, 11.377302660422608f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6324441441823203 64.75719304054671 0.8859116612345429 {Pose: {Head: [-146.69416898816692f, 2.061322695346348f, -0.6530654050723f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5431760065593467 64.17552645662742 0.528484007019768 {Pose: {Head: [-143.13334898855962f, 2.4027929124979077f, -3.4076041652007953f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.106838209082463 65.01585315573844 0.8358939075189233 {Pose: {Head: [-152.19812970375f, 7.264899494141825f, -27.893746163074045f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4684318435165127 64.35261610998663 0.5123742365503346 {Pose: {Head: [-146.02989720715942f, -4.389518820554658f, 9.17177680178138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4763990036962955 65.24846284577247 1.2898918660169374 {Pose: {Head: [-146.24203804215892f, 1.173975301972515f, -7.160593622344981f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3074670546410438 64.5810816495322 1.0790872094805675 {Pose: {Head: [-133.96134783720584f, 1.3964841352334858f, 1.1178267521996195f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7427929899496277 65.55221291145777 1.8493791880738593 {Pose: {Head: [-133.2653566910525f, -26.96905653713923f, 22.72786049249738f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.512885129685788 65.14737379702264 1.116474133683595 {Pose: {Head: [-148.87784796002512f, -3.9630813953283055f, -5.038173762426059f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2835690962288904 64.55185997679517 0.8027573721030061 {Pose: {Head: [-143.2188675948297f, -1.779369550535289f, 2.853410853621153f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9504939954415512 64.4494478814006 0.6235691779925279 {Pose: {Head: [-141.77860027083258f, 15.490271008894055f, -23.721289815302345f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6926099523458893 64.28986846126807 0.2818126108557557 {Pose: {Head: [-153.75379174036954f, -1.462119167386215f, -0.5249346871946418f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3891907784421798 64.34099943153986 0.434168210162451 {Pose: {Head: [-149.54360842022356f, -3.2843252146467803f, 8.90913772919156f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.728239011925966 64.54364472802418 0.14685803357284305 {Pose: {Head: [-167.2766195079843f, 1.4812513293281668f, -1.2780750041623765f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3315203104668702 64.75298051051058 0.8302932071325262 {Pose: {Head: [-147.55469294247953f, -1.945119499822743f, 3.7891183838263123f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48441797410872833 64.59297186688238 0.5964035726212945 {Pose: {Head: [-140.61959092838077f, -27.04473543366937f, 41.607966234729446f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.210180822991846 64.25628236839913 0.2637622493548284 {Pose: {Head: [-153.80028251400338f, -9.714489963031607f, 17.206020959399954f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6640374062728887 65.47682771461012 1.689357565676078 {Pose: {Head: [-141.8226608865027f, -1.4609865022413182f, -2.371586057444644f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2588111902974928 65.03495203766964 1.128760037024166 {Pose: {Head: [-137.39168371480454f, -0.1972083476872685f, 6.163202685547398f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0366125429639412 64.92949025722719 1.0424236267360576 {Pose: {Head: [-144.698279020784f, -0.009590206248289443f, -3.3837515666896936f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2409956227823602 64.88643696169875 0.6823914803528479 {Pose: {Head: [-152.42417270852647f, -1.4253989621325542f, 9.858608959092257f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2250771507074214 64.50414761979313 0.32469577174883746 {Pose: {Head: [-157.98325463226445f, 8.843537279362655f, -9.693905715502721f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.707343331260333 65.45518359426303 1.714398601572214 {Pose: {Head: [-142.1546104169253f, -1.7600182971735205f, -2.610371812182519f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7275129689109081 64.67858114685848 0.7959529415826753 {Pose: {Head: [-145.48650964177577f, -3.300779303696915f, 1.8226745582723283f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.43360874534565 64.27362538763909 0.03644091309050128 {Pose: {Head: [-168.7076628143247f, -2.660272338600445f, 16.832596478510943f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9316296648658349 64.79456061528828 0.23557096352574447 {Pose: {Head: [-166.99619038530986f, -10.962640928367742f, 16.902213192753234f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.682135728115989 64.40308945854916 0.2652700177195467 {Pose: {Head: [-155.58311553925944f, 1.865621668145057f, 0.6285933612334652f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.291588496674515 64.33592756420416 0.018744350935592097 {Pose: {Head: [-169.83464475656035f, 2.7324799773342283f, -4.579623189067621f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3040869131187735 64.17938300674963 0.23681667737543477 {Pose: {Head: [-156.45579950732017f, 0.8067313089198125f, 0.6261052789730891f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.722802202972525 65.1387361302172 1.0138291817462044 {Pose: {Head: [-152.1104637901507f, 0.16784365004385837f, -11.74571450038927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.55161972996784 64.2025328668898 -0.045387555185332315 {Pose: {Head: [-172.4008866029563f, 1.2760625770977114f, 33.49504134933754f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.205211260170104 65.26192855534 1.2012152031562926 {Pose: {Head: [-144.53162110596872f, -4.137057073098468f, 2.2309760833240526f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.26504711439237727 65.08457295038869 1.2896451890021643 {Pose: {Head: [-138.16713607372324f, 0.21040164916629608f, 5.388383108810291f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.333871594814242 64.4794978463829 0.6285653986883268 {Pose: {Head: [145.76470889974397f, -150.98516222383378f, 44.867836889072485f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0374200221821892 65.35522987631788 1.6185197343177267 {Pose: {Head: [-135.60033490154544f, -0.8743678107640039f, -2.0876364013566078f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.011520468329141 64.64171970685727 0.7288354122837519 {Pose: {Head: [-145.29908296396056f, -16.77565082500909f, -3.6127481468573404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1260871781191706 64.66659125067505 0.7490814832630439 {Pose: {Head: [-144.55984299861043f, -11.715756838967463f, -8.63112484164391f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9062528397666096 64.12833183487663 -0.10078777422694908 {Pose: {Head: [-170.20407488676724f, 9.812089424638884f, -42.06734082875907f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7026492449191046 64.58917149197609 0.8291203873955907 {Pose: {Head: [-146.04992119307934f, -2.5885332210894143f, -1.9277748003940087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2258547315911564 65.15031555036472 0.9190665409246599 {Pose: {Head: [-130.73180270938997f, 3.0729838993015206f, 11.482922978205965f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.091942946428759 65.45531713307732 1.684693082115181 {Pose: {Head: [-137.40342581626965f, 2.929301404969763f, -7.384215465759677f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.539912801416619 65.26841414233044 1.553245718190808 {Pose: {Head: [-138.9448215769073f, -5.197183957175212f, 7.134537757751811f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7002840462114666 64.77744734338357 0.816143997029608 {Pose: {Head: [-150.6555888699935f, -2.688854503409199f, -1.4974234353404106f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.973936565325528 64.66743267937723 0.7322865203108238 {Pose: {Head: [-147.24051871838174f, 1.9405939522048932f, -5.071277306560447f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3737268245901263 65.16937153109393 0.9657552923283433 {Pose: {Head: [-130.91936841755495f, 9.891932996610393f, 6.216096264354021f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6937919018992047 64.65751720168167 0.7252360533120785 {Pose: {Head: [-149.78481636926526f, -1.3966084113936672f, -0.768664644791421f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8417420246771005 65.22449568773519 1.1867807535670378 {Pose: {Head: [-144.74305441675347f, -9.375967167019933f, 9.92900755547059f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6993147668806841 64.48919309513263 0.35256823690604994 {Pose: {Head: [-155.78469325231887f, -2.1147609961545046f, 17.073818658122125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7001492158400278 64.69501672998973 0.6266280791891226 {Pose: {Head: [-154.00792733213794f, -2.2841194989512563f, -1.3207196625588802f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3647759369947225 64.70955287287171 0.5434318896121029 {Pose: {Head: [-152.93680223253455f, 5.796030016796094f, -1.8286177337383915f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7102888853397387 64.46534381323963 0.23869422371235052 {Pose: {Head: [-157.31266282500957f, 4.83099075214006f, -2.8837816611605094f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4453100702578716 65.4812949440911 1.775561368241652 {Pose: {Head: [-126.1866444115172f, -6.117994375843709f, -3.049430338065644f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8893199211203657 65.31327521475309 1.2519776404458238 {Pose: {Head: [-143.71789645719494f, 19.09769477931912f, -21.23379701773395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3166305871542943 64.55648497081829 0.7456131416467748 {Pose: {Head: [-144.6441481306195f, -1.2615321935168724f, -0.7508579841114558f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.303034363137865 64.81731186431017 0.32965494282683494 {Pose: {Head: [-166.46643044270178f, -3.977713826854511f, -15.683212111156733f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6827086888241185 64.78604164213796 0.5886267568797507 {Pose: {Head: [-153.78437495553402f, 0.11916522800712537f, -0.01836451575739991f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5382145790504258 64.98677789008764 0.7472965790274024 {Pose: {Head: [-144.6651978387708f, 11.846917926100566f, -8.449720802844839f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37540330639922226 64.73100363284955 0.5848457885664234 {Pose: {Head: [-154.80855761646401f, -1.3744221331165143f, 4.300559653495829f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.111217950742212 64.91122912006483 0.6566067570364479 {Pose: {Head: [-144.42912128852174f, 12.014747151379336f, 0.3666371878490703f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2638999266594079 64.80380245800345 0.5278545203447569 {Pose: {Head: [-156.4639411074282f, 10.240327442364332f, 4.587158072507393f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.15627503346119465 65.0691777091356 1.2025531307841364 {Pose: {Head: [-136.19805753194538f, -8.798151617909847f, 14.725265980709818f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.429547477707543 65.04543748828043 0.7447369585193937 {Pose: {Head: [-155.23466840834246f, 1.208066666772471f, -25.234987397132777f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35413594245446617 64.19692586951763 0.13632563681717108 {Pose: {Head: [-160.1518797229913f, 0.6120860251336174f, 0.7854076983266877f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2120374282011649 64.32871468040067 0.41942111652682 {Pose: {Head: [-93.25044667911034f, -71.56314839278843f, 53.81867329509225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7424885363123346 66.17020670012947 2.754331300711517 {Pose: {Head: [-134.9087853305487f, -3.21088447814891f, 3.2060731056186653f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7131053100141465 65.14614968371232 1.0830364527573833 {Pose: {Head: [-150.3393724706121f, -4.947464277752511f, -3.119153262005976f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0761508890672205 64.28019977720089 -0.09108032979535645 {Pose: {Head: [-174.70378556584427f, 1.9568270424087135f, -0.7109649008302558f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3028708790639946 64.74106024290019 -0.012089338083883933 {Pose: {Head: [-175.65318569617074f, 3.200133285874047f, -0.1151928622372731f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.674804055558949 64.54248173088179 0.24142945060990717 {Pose: {Head: [-157.83155143878585f, 3.2649323854115235f, 1.2252173073955583f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0096564804063717 64.41624907461076 -0.000993758025201838 {Pose: {Head: [-170.6356813392569f, 5.132648530239158f, 18.235174070718383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3359356074896167 65.21344083535696 0.908212675436766 {Pose: {Head: [-154.85985464243396f, 1.623223550571045f, -5.312606851642203f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2403402752733794 65.02642642016775 0.3671888653365972 {Pose: {Head: [-151.35193082971463f, 27.39961243438247f, -19.859541619066086f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34023856221603144 64.60880762671657 -0.037663056606895395 {Pose: {Head: [-175.26411479758812f, 1.0106178277711366f, -1.592287254882612f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.25862331735206945 65.20865228932902 0.9255769488090204 {Pose: {Head: [-130.4466198493566f, 2.8004692317535316f, 11.331383130619534f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.02737917967991 65.25121169814145 1.1625305154746741 {Pose: {Head: [-144.90137764581738f, 7.642339649900148f, -17.654179518183607f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0287834844423478 64.97488978372499 0.7763243820334542 {Pose: {Head: [-139.56374769964305f, -8.606504308926064f, 24.69154281728234f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9425200882623335 65.02978194616831 0.713242521566914 {Pose: {Head: [-142.10452725560285f, 13.50239039881124f, 4.777210534148208f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47063968635058506 64.61664782318054 0.5638900609167631 {Pose: {Head: [-126.41329611600142f, -24.89189880018144f, 40.91013206471616f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6636086996748778 64.98730005594705 0.21929636599946822 {Pose: {Head: [-160.2739027419589f, -6.187024346815237f, -3.4018600695807617f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4090601655931736 64.78620639166296 0.3548978004583514 {Pose: {Head: [-160.54800761393182f, 15.362536086322821f, 4.902495540061661f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2684299314274807 64.82021491062713 1.1666995998816647 {Pose: {Head: [-110.87643959929339f, 3.0763125254610566f, 9.148120241529428f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8299409226117865 65.45327386499238 1.286902057211882 {Pose: {Head: [-143.77793410565798f, -0.6524281018100659f, -1.9636088222731725f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0474993207839738 65.50896737036337 1.7136941711869351 {Pose: {Head: [-135.4022898617585f, -9.395203715385172f, 6.5100946615429836f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0875086563397067 65.45183882046317 1.4323213663655188 {Pose: {Head: [-132.24211823686042f, -3.972481128079832f, 6.7666524943588335f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31056274003997353 64.35254401437598 -0.08309859470720922 {Pose: {Head: [-172.98167878244413f, 0.1705435062789919f, 0.06889557245194852f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.12678717971461 64.96117635471659 0.788604931702851 {Pose: {Head: [-150.02139127047667f, -16.2226387938243f, 24.836581118141822f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.034137388206042 64.21341119086675 -0.170416557718727 {Pose: {Head: [-177.11745622431988f, 2.0996819547408525f, -0.9091277796188241f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.159273856962037 64.98154099476491 0.5438719785297037 {Pose: {Head: [-158.58979414713525f, -7.0017033643749835f, -7.979865259996799f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.962363836375438 65.12077366037049 0.4786901875667637 {Pose: {Head: [-164.34298119324845f, -16.401048504395757f, -26.370451662157606f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9983376812601604 63.743075459927084 -0.18999089291089238 {Pose: {Head: [-157.44502192864655f, -22.522598046336036f, 73.87253818836585f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5151222069270404 65.56223517306857 1.7608488708817527 {Pose: {Head: [-136.37335686693356f, 2.2381256966494196f, 14.13453008984998f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6294039779761587 64.54589301922921 0.1854521112586473 {Pose: {Head: [-159.71495164490122f, 9.474354637758065f, -14.444120579383961f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.26745495995593255 64.19686500822992 -0.08713390030171687 {Pose: {Head: [-170.0034423349795f, -7.4266151836095196f, 63.47995397924417f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.252242593826228 63.891031734352936 -0.18255377292245267 {Pose: {Head: [49.988778142674924f, -0.050671381007454906f, -8.107054288029143f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9601253381646202 65.06417240135818 0.25163481912779617 {Pose: {Head: [-160.06110080815813f, -10.562157960071106f, 2.5920682039377136f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33612089914845783 65.22811746170503 1.1830179557195943 {Pose: {Head: [-130.1199982958451f, 10.646647114376936f, 6.528024518578197f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2504577817415545 64.87675369695063 0.5553165351314596 {Pose: {Head: [-157.2104968987207f, -2.4779584090009905f, -18.818320768544762f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.737287304796002 65.2614523131105 0.9132035701824861 {Pose: {Head: [-152.2500327283997f, -10.731878560060197f, -5.498478976233852f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0548732854729477 64.23641386971028 -0.12802336523877297 {Pose: {Head: [-175.56509157867535f, 2.0711140582598326f, -1.7146533166297697f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3357748968385206 64.96465206505016 0.647949264650521 {Pose: {Head: [-156.54055556598644f, -0.8435690060515217f, -21.68357366191979f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4136857996711172 64.85286200162362 0.19904739089266188 {Pose: {Head: [-158.08164099892466f, -0.6114587033135805f, -13.87686316033915f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.24032979107778393 64.5711724728265 -0.10542036653864234 {Pose: {Head: [-174.2697512265005f, -1.247528811825103f, 8.903915787337835f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.044651888332810696 65.11733587967176 1.1079886056736439 {Pose: {Head: [-119.13760978148547f, -23.761122109806266f, 29.051648649733128f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.946409661211369 65.00513771808806 0.5401330797320187 {Pose: {Head: [-161.25945838794263f, -9.548544418321281f, -33.478470907433056f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7747179235122603 65.15285480997072 0.4811456846168988 {Pose: {Head: [-164.27045632912262f, -18.722816412636092f, -5.376226731602282f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7473008916844166 64.70551546543815 -0.19604060649161512 {Pose: {Head: [-179.36960646352085f, -1.843670674827495f, 3.3234124669648697f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.864596295184125 65.31984810286508 1.1654690922970647 {Pose: {Head: [-131.06964076714615f, 15.980236068928669f, 2.889053908846175f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.313040553747727 64.79714786221815 -0.19998440114683863 {Pose: {Head: [-178.04063037912832f, -0.6148119455848621f, 0.09153525697087006f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6767000900253763 64.64095716190296 0.17591104600174443 {Pose: {Head: [-160.74059362271583f, 2.401936943939975f, 0.8654081990672735f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7457067516329974 63.98643626228592 -0.1557436380342554 {Pose: {Head: [60.74287101217101f, 14.768415227416824f, -13.587851632839204f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0147942183717833 64.63652308754254 -0.03421912924509485 {Pose: {Head: [-174.01988992111026f, 8.424224302788637f, -50.854707631746734f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3671027303763399 64.79976458907635 -0.1601904659958013 {Pose: {Head: [-177.94539352607526f, -0.5712078933985874f, 8.219287971990967f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.783134808393233 65.45683163482195 1.7375180793156306 {Pose: {Head: [-125.05367753434379f, 3.52977679496836f, -10.024882673846037f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.342294742801364 65.18749364268818 0.6122440709373105 {Pose: {Head: [-158.85037880983973f, -6.816716294252837f, -8.966534006742497f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6710856159056213 64.83702479459001 0.06415041513440954 {Pose: {Head: [-168.4741907705805f, 4.351412588395098f, 0.8525893188282488f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.011202356863824647 65.23012946422753 1.150527864587562 {Pose: {Head: [-96.54293443667744f, -70.9911491281403f, 19.896876069690315f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.520766425640764 65.20154444125201 1.429169264353431 {Pose: {Head: [-108.70326595929674f, 0.32643943981730617f, -9.013773768920167f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.23187589656756238 65.25613504619612 0.9291568654385598 {Pose: {Head: [-130.62862961785257f, 3.1814700926714314f, 10.814647240210741f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



