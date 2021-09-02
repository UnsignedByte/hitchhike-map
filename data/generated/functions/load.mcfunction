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

summon armor_stand 910.11187912 65.25186649 -151.58917939 {Pose: {Head: [-109.0017911894224f, 9.858993107485063f, -4.445020313976287f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.96251210 65.08620321 -152.04460164 {Pose: {Head: [-154.91214912970185f, 0.683087973563185f, 0.07708087096453908f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.20673666 64.02255270 -152.58516114 {Pose: {Head: [45.12897006189336f, 0.02519675632817111f, 15.576230224808738f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.70323641 64.71320900 -151.94315481 {Pose: {Head: [-41.19046106076084f, -110.81314328040504f, 0.04617291284200488f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.95600890 65.01491089 -151.48197509 {Pose: {Head: [-90.29071658553246f, -27.36682150539313f, -0.8329473308874756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.49250562 65.01018905 -151.31393638 {Pose: {Head: [-88.19236359930449f, 6.7515247191905425f, -4.089030140943131f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.94119214 65.07003428 -152.16153214 {Pose: {Head: [-147.06509198605096f, -21.5367225156342f, 3.4534005852146312f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.39618055 64.50554083 -151.72783942 {Pose: {Head: [-89.79600483556871f, -0.032881007620167706f, -0.6837687831831144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.81360024 65.05329744 -152.06292231 {Pose: {Head: [-145.32317066895578f, -12.822363241742542f, 0.009785879962373865f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.99223283 65.08535097 -152.05495836 {Pose: {Head: [-135.22319050551113f, 28.33702687778957f, -13.804701349235147f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.51990151 65.07376022 -152.63798969 {Pose: {Head: [178.68825655479725f, 7.965693408892383f, 3.415243477966164f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.12102900 65.08070736 -152.07472406 {Pose: {Head: [-152.75301094290256f, 0.5556157151528955f, 0.03621441646151441f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.06496164 65.08980422 -152.05749141 {Pose: {Head: [-153.96333069153835f, -0.09520871270883159f, 1.5333471571413473f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.53459979 65.20815485 -152.11542733 {Pose: {Head: [-140.6159578089896f, -17.35144524389784f, 10.217427426349909f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.67774260 65.07249579 -152.65998478 {Pose: {Head: [179.95114218117527f, 0.22568167399576392f, 1.1753057782907663f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.76896696 65.08209396 -151.18862760 {Pose: {Head: [-88.64824347453435f, 0.9710382867496201f, 0.2637152034440021f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.81004565 64.72306233 -152.84598556 {Pose: {Head: [133.96587555840443f, 5.658921332740909f, -5.855718633492943f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.99580359 65.49935482 -150.81380402 {Pose: {Head: [-87.11815775709609f, 15.554125137921096f, -5.197129956629626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.52327194 65.07996671 -152.13412808 {Pose: {Head: [-145.62975843753034f, -1.3338498777645187f, -0.5834253220241025f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.17591252 65.05735130 -152.08969369 {Pose: {Head: [-135.20051914103954f, 0.020198696754110925f, 14.440684486896295f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.09445517 65.06932394 -152.14264851 {Pose: {Head: [-145.24634884463174f, -2.083535169967471f, -5.029707587017065f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.25518153 65.07530222 -152.03254989 {Pose: {Head: [-145.16160883413366f, 5.0444402242618285f, -0.6612663393607204f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.85341032 65.52042884 -150.70344503 {Pose: {Head: [-88.3626554257478f, 2.638221053147132f, -5.743018819287046f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.85764419 65.07155032 -152.17750586 {Pose: {Head: [-142.83928397272277f, 1.5495541385796165f, 12.217630355571155f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.27642288 65.07926219 -151.98753693 {Pose: {Head: [-146.24661954259494f, -0.19572936044113498f, -0.711515545236249f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.56660045 65.30647397 -151.85495025 {Pose: {Head: [-130.24554649319055f, 19.551963762474227f, -13.447125900510304f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.34680479 65.56781935 -151.73454455 {Pose: {Head: [179.8373207211431f, 4.752820948948968f, 0.0031819363157256867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.46650215 65.05750311 -151.19431241 {Pose: {Head: [-88.26433574796583f, 4.6197411274337625f, 1.2995100226065972f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.00697480 65.00122399 -152.05790078 {Pose: {Head: [-136.44496235088698f, 0.39277806120113834f, 0.028771745659950398f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.88770257 65.07892129 -152.09568901 {Pose: {Head: [-152.26339080735477f, -1.7046583432055542f, -0.0431591603188833f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.39609791 65.07102985 -152.17583212 {Pose: {Head: [-144.0451355131074f, 6.339225282489822f, -0.6837312858360131f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.26917131 65.12485296 -151.41834937 {Pose: {Head: [-89.24606851951229f, 45.192092523028705f, 1.1362638113881696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.36949846 64.98408425 -152.70590184 {Pose: {Head: [163.61381041519067f, 7.908519217834041f, 0.0032251127816358255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.00364517 64.26270859 -151.77183518 {Pose: {Head: [-3.2622912703240226f, 88.07019024832498f, -83.54681443959736f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.24870903 65.07897321 -152.08892378 {Pose: {Head: [-145.00920319098591f, 4.167032298453449f, -3.610380859917483f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.99941786 65.00768176 -151.29756641 {Pose: {Head: [-89.65257764692663f, 17.52829292944913f, -0.2036691120036479f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.39799339 65.09342789 -152.68787026 {Pose: {Head: [179.97239162391884f, 0.005443982328022154f, -9.2668992954274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.02020183 65.56770556 -151.73169334 {Pose: {Head: [179.82895526685982f, 4.051350144609168f, -0.018157393886218367f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.70772820 64.96405306 -151.17446424 {Pose: {Head: [-71.83248687913752f, -5.416151260310572f, -14.951582795978084f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.20323468 65.01918111 -151.32089801 {Pose: {Head: [-88.3409405772035f, 6.172478423187895f, -2.9517555354139926f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.28220392 65.01174482 -151.22856269 {Pose: {Head: [-90.02766552168572f, -0.1592019267394918f, 0.020480839224917096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.45346915 65.51079933 -150.91649368 {Pose: {Head: [-89.93987885886398f, -13.468004394385778f, -0.1073777505817445f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.98089629 65.06921801 -152.02418429 {Pose: {Head: [-146.39817978623654f, 1.5338063523428023f, -3.2447336538996807f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.32854059 64.68101475 -152.20583375 {Pose: {Head: [92.55068501936795f, 49.927305773693924f, -3.2620697582445572f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.42751061 65.07507905 -152.04849967 {Pose: {Head: [-144.8508362377239f, 3.778718991225937f, -0.6522230089792095f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.63682776 65.35170834 -151.85133131 {Pose: {Head: [-143.30055165985357f, 6.082337589944948f, -11.00949146436987f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.91246073 64.66288577 -152.30405667 {Pose: {Head: [90.16072409241487f, 14.076400461605532f, -4.15059788571673f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.62170143 65.31331598 -151.91993650 {Pose: {Head: [-143.70950010531544f, 3.6305404311621956f, -7.626023432949026f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.94108639 64.88710517 -152.01405914 {Pose: {Head: [-129.79597269645137f, 43.113987382777175f, -27.903896902092704f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.67085149 65.07256717 -152.18456326 {Pose: {Head: [-143.6675901957149f, 2.2993421024484895f, 9.735095658754759f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

summon armor_stand 906.67398392 65.56685688 -151.82023739 {Pose: {Head: [179.73731460274942f, -21.990530412835966f, 0.061336001223736406f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.18717599 65.50029856 -151.42173340 {Pose: {Head: [-135.898925292586f, -0.009650650999748019f, -0.016044819531999627f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.17359316 65.39125207 -152.22019804 {Pose: {Head: [179.43580062746955f, 0.30504794434664884f, -7.3260711237093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.97180855 64.51065534 -152.47823486 {Pose: {Head: [78.04143636607616f, 19.018965518903826f, -4.1949673301606865f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.83522966 65.04835985 -152.15103704 {Pose: {Head: [-144.244060265853f, -0.04807790227855806f, 0.014638594338100837f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.63277445 65.01735240 -151.16877326 {Pose: {Head: [-90.79530146865629f, 0.04460095846430281f, 2.054431636777394f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.81209722 65.17197766 -151.70988807 {Pose: {Head: [-108.25410770304192f, -9.264370827175398f, -2.123883998202989f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.25545383 64.45561075 -152.14632468 {Pose: {Head: [56.35392839398386f, 0.1582452118181516f, -0.00467134805538576f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.47713341 64.43345088 -152.67948532 {Pose: {Head: [75.67575905006268f, 20.143971414093226f, -5.921166728937098f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.77697019 65.53863278 -150.74328081 {Pose: {Head: [-89.99408749884762f, -0.3268417110651184f, 0.009246293629572544f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.90526576 64.08118530 -152.22488720 {Pose: {Head: [29.72317981275469f, 19.20649978249528f, -19.106523731628744f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.60194354 65.09762514 -152.23742610 {Pose: {Head: [-178.17498852369698f, 7.995887975302397f, 16.252967528207595f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.63760207 64.15027856 -152.81244635 {Pose: {Head: [89.87319736736461f, -2.839581737569143f, 3.709103117124148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.05341399 65.09594498 -152.24252881 {Pose: {Head: [179.73204566376347f, 0.71653952424673f, -11.354093485329606f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.60161563 65.17434461 -151.70272912 {Pose: {Head: [-108.54425369306134f, -25.304289337342762f, -0.8755507758144871f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.98706668 64.81402007 -152.86235196 {Pose: {Head: [111.87725130971575f, -4.9470195163036905f, -14.77815404843849f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.64302755 64.56726785 -151.26519619 {Pose: {Head: [79.64537912525083f, 170.4060598538892f, 5.88307501288527f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.70918624 64.51062689 -151.69275807 {Pose: {Head: [-90.00144313225239f, -4.1891734265770975f, -0.30850279521284957f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.57387335 65.05347097 -152.12623460 {Pose: {Head: [-145.3884945452523f, 8.504396941335948f, 0.06219319617647332f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.64962459 65.08583458 -152.23873155 {Pose: {Head: [-179.76469453431557f, 0.042042987725293635f, -5.197612120262342f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.29052800 64.52659939 -151.71203008 {Pose: {Head: [-89.9750755413002f, -4.008599943353368f, -3.488280355766792f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.33767000 64.10774267 -152.83367865 {Pose: {Head: [89.91012907575067f, 0.0017104790509441315f, 0.1548277475432422f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.18813131 64.54512448 -152.13074685 {Pose: {Head: [-108.50086644221545f, 75.2426835563264f, -52.3858129642788f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.81378699 65.04980526 -152.12144978 {Pose: {Head: [-144.55386362822256f, 0.0006253951554800198f, 0.009760418358541467f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.75732065 64.04103030 -152.34026826 {Pose: {Head: [34.75463694168345f, 5.59315828468361f, 3.8807573446623205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.84662183 65.05954554 -152.05774165 {Pose: {Head: [-144.3741458087553f, -7.874509854373971f, 3.467297210591763f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.45712931 65.07554210 -152.04543681 {Pose: {Head: [-144.42633589293757f, -6.724054467439502f, 0.14431163662008573f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.04935090 65.04856177 -152.05680672 {Pose: {Head: [-144.3936577778136f, -6.577471408317819f, -0.04758556377215995f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 907.21701567 64.60534170 -152.04299353 {Pose: {Head: [-117.18408643696888f, -48.07769561836819f, 49.589722210228686f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.25972112 65.84696302 -151.51502180 {Pose: {Head: [-158.58834643676514f, 0.07720576222364552f, -0.15353479557985014f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.53748331 65.07502560 -152.25102425 {Pose: {Head: [-178.1043905248836f, 8.48488653465681f, 0.002781308843296311f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.01916805 65.18142305 -151.80198549 {Pose: {Head: [-108.49077904131322f, -0.20419776962237843f, 4.819122572370098f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.71244427 64.72617560 -152.35602013 {Pose: {Head: [94.47542314930804f, 10.480871989071348f, 1.9288306141517586f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.25419143 64.55093601 -151.68827386 {Pose: {Head: [-89.908437807335f, -2.7528239426514536f, -3.50511984685789f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.80877829 65.03673461 -151.19603512 {Pose: {Head: [-91.26359042290836f, -6.241000865139061f, 3.9291133723054084f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.00206885 64.71643663 -152.35093740 {Pose: {Head: [94.56284642759879f, -10.971156241543916f, 5.070418766223335f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.71920516 65.07837782 -152.21139171 {Pose: {Head: [-179.75728885563132f, -0.03382892528630976f, 2.6228734345060625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.12348522 64.72869415 -152.29851106 {Pose: {Head: [94.68931877370522f, 3.576902258238044f, 4.786659399695275f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.21179128 65.06088258 -152.31206652 {Pose: {Head: [178.09576062011973f, 59.14460931133953f, -0.013647124088730407f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.05816183 65.03243854 -151.78551891 {Pose: {Head: [-100.35160759996872f, 35.14782892575383f, -9.488887654236814f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.57839507 65.07957459 -152.10433100 {Pose: {Head: [-152.46520912510303f, 8.64164154221754f, 0.04827715823547096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.88246799 65.12433536 -152.69013287 {Pose: {Head: [179.75158416932825f, -0.16364212662712146f, 5.688314449216301f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.75157744 65.51180125 -150.71991504 {Pose: {Head: [-90.02725932565242f, -0.5110802644032671f, -0.0033249304941181264f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 906.67666904 65.05091172 -152.17256913 {Pose: {Head: [-144.78749691022273f, 8.05679958639542f, 0.012116275803238132f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.76795496 65.06438221 -152.17109587 {Pose: {Head: [-144.14587536557033f, -2.0611043737327446f, 2.832484166304372f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.15246950 64.76413974 -152.28862253 {Pose: {Head: [95.52575442812892f, 0.039157343818540344f, 3.646174825200489f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.68811342 64.78911408 -152.28777795 {Pose: {Head: [94.5305551216762f, -0.34046229485512647f, -3.039891332762546f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 904.74172131 64.76565697 -152.29478082 {Pose: {Head: [94.57437811637158f, 1.29007522140102f, -2.896103067178484f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.66048385 65.09188902 -152.68723220 {Pose: {Head: [-179.99581790052255f, 0.05176896430783659f, 8.326882606596829f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 905.24117767 65.00560072 -151.33076352 {Pose: {Head: [-88.85765639002373f, -25.958910172774846f, 4.077488137133119f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

summon armor_stand 902.82278825 64.60226697 -152.29887838 {Pose: {Head: [89.4119365512085f, 6.647830786060648f, -0.4120668890877484f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.21495646 65.51432163 -150.86377235 {Pose: {Head: [-90.37743179059117f, 4.969661941214216f, 0.010468532209306452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.37308260 65.31251363 -151.35016056 {Pose: {Head: [-114.40880302227438f, -15.196199283580395f, -0.19988762919125452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.43403780 64.19934629 -152.38079359 {Pose: {Head: [-89.92412895101072f, 96.47170760356565f, -47.20938964258137f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.73649461 65.30164662 -151.27978165 {Pose: {Head: [-113.63556441489428f, -0.061414284458303374f, -0.29711543772678506f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.61456150 65.31395216 -151.34775297 {Pose: {Head: [-114.43324342638005f, -14.065964525871243f, -0.47413831144238966f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.34148379 64.99071865 -151.98271244 {Pose: {Head: [-130.92166531233119f, 12.594659622753152f, -6.742824912915502f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.45822288 64.70946971 -152.35511682 {Pose: {Head: [89.79923396657668f, -17.901684826301075f, 2.6462338021234464f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.16907582 64.59930151 -152.42865566 {Pose: {Head: [87.01870520459231f, -13.4023600994403f, -6.149772996584975f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.66894859 64.66321637 -152.46864880 {Pose: {Head: [89.52024757638617f, 16.458238242481908f, 3.8122862957188444f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.77795876 64.81477378 -152.10000699 {Pose: {Head: [96.3585934364792f, -106.61728552077001f, 37.303160561049324f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.24228609 64.64688490 -152.50767521 {Pose: {Head: [88.61021925791468f, -0.09541510682101026f, -6.513446394527912f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.50738986 65.01377569 -151.96341810 {Pose: {Head: [-138.38653956376228f, 0.029250403350869827f, 0.1822609289432433f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.20770703 64.46800252 -152.57453093 {Pose: {Head: [-68.98404148454962f, -132.29024336886397f, 29.790688606200657f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.03209954 64.73566711 -151.75414446 {Pose: {Head: [126.79590421917344f, 179.93576814918345f, 3.4135180638930946f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.24593090 65.01763150 -151.91751271 {Pose: {Head: [-136.0787567819998f, -0.2292373205025347f, -5.577848456009722f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.04635027 65.06437041 -152.00423194 {Pose: {Head: [-147.8505791188892f, 0.02272686952303263f, 0.0007789339850789529f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.77049515 65.50987922 -150.81378751 {Pose: {Head: [-89.88052633587017f, -0.06893688987182316f, -0.047694695422144336f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.60059918 64.80074650 -152.29892471 {Pose: {Head: [94.04970453629679f, 45.91647277782488f, -8.09815150156403f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.86801737 65.08405809 -152.09982341 {Pose: {Head: [-147.90931793839988f, 4.073787050509757f, -7.019132049606681f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.54085504 64.66654655 -152.54430018 {Pose: {Head: [87.37032389314793f, 42.28987584033468f, -8.583308459741179f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.42389284 65.07390229 -152.07530915 {Pose: {Head: [-139.00006229426037f, 34.03511596117674f, 0.06020131046366433f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.64535349 65.03392010 -152.02969934 {Pose: {Head: [-136.9369052820122f, -6.991525604403979f, 16.725942251069398f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.60785235 64.62994547 -152.42256418 {Pose: {Head: [89.57825282760031f, 12.418175287045997f, -4.746211671563411f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.77187798 64.52393890 -151.66911459 {Pose: {Head: [-90.81978944740608f, 0.03468832725489447f, -2.4818890239998397f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.08044003 65.01346046 -151.94730517 {Pose: {Head: [-136.95835676559557f, -4.649011369246102f, -1.5423284597501845f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.24091820 65.01702871 -151.98432551 {Pose: {Head: [-136.00779965111f, 13.20210723811724f, -7.544067204038071f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.74928730 64.70768936 -152.28368271 {Pose: {Head: [92.92542477194458f, -0.47961842821482736f, 9.34506214749647f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.74065382 65.56285549 -150.66664061 {Pose: {Head: [-89.91168302727355f, 0.20194444866910272f, -0.5287741193140207f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.69102489 65.00746403 -152.01972864 {Pose: {Head: [-137.0110557655256f, -5.683732614437604f, 0.024058216194827346f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.90451266 65.02384068 -151.95360779 {Pose: {Head: [-136.81518121000124f, 0.017015124744075506f, -5.628371276651374f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.45141979 65.05129394 -151.46352663 {Pose: {Head: [-91.4905778427082f, 4.224102584888274f, -7.305769799145007f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.88823854 65.00816824 -152.00392186 {Pose: {Head: [-137.12460528284515f, -5.477217106343111f, 0.022317430696633677f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.34167010 64.10316226 -152.56441349 {Pose: {Head: [52.739120052568666f, -15.88082026194626f, 16.848831312203032f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.29438118 64.51097389 -151.67267166 {Pose: {Head: [-90.03275793043035f, -0.80973529780407f, -0.2108789950703135f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.69273293 65.01696530 -151.24199529 {Pose: {Head: [-90.91460969304775f, 6.488026496013717f, -1.0296620562297174f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.27294044 65.21931705 -151.97894607 {Pose: {Head: [-147.5793308211399f, -6.594644019690883f, 9.788148560184867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.46454042 64.13413525 -152.82025767 {Pose: {Head: [89.85732173858055f, -1.8970642131619602f, 0.38300509530344273f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.58450921 65.04941581 -151.47759471 {Pose: {Head: [-91.98271723877357f, 3.895542979619583f, -7.144230466252384f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.59015975 65.04134865 -152.09357180 {Pose: {Head: [-138.71215854781224f, 1.725921392837047f, 7.59657053615658f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.43180715 64.98157512 -152.03070248 {Pose: {Head: [-130.03126648472377f, -0.12586482708741478f, 4.279477778596108f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.91613467 65.53641775 -150.83767127 {Pose: {Head: [-89.76914692354816f, 3.5241444845394163f, -0.5161339111636029f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.40439083 64.64301395 -152.40026824 {Pose: {Head: [89.65493993466602f, 13.198447403440863f, -5.37132511367668f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.60489927 64.54660261 -151.66888518 {Pose: {Head: [-90.90412903904026f, -0.041351154934062155f, -6.570378875717859f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.04702819 65.06554892 -152.15951593 {Pose: {Head: [-146.95734372402092f, 14.189427344212888f, -1.5976357541584298f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.74994878 65.10678370 -152.21093866 {Pose: {Head: [-179.7586587780721f, -0.1085094481789237f, 13.086588771623576f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.87499535 64.53982054 -152.53217519 {Pose: {Head: [75.16078432217999f, 9.378873039586587f, -10.67724309894478f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 902.53051365 65.51171734 -150.71728119 {Pose: {Head: [-90.00001278455268f, 5.3093696399664925f, 0.00002213655395091524f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 901.46126395 65.06783148 -152.68348350 {Pose: {Head: [179.92296006958009f, 1.1879978533370286f, 0.03568802205581755f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 900.28362929 65.51171721 -150.79644326 {Pose: {Head: [-90.00001743025624f, -0.5916234849295242f, 0.000010056003533466051f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glow_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



