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
summon armor_stand 2.4656653484883777 62.3723641157369 1.6391234419284368 {Pose: {Head: [81.26038919626703f, -5.607016945906889f, 8.268547004881146f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6933715489498327 62.30305209807706 1.8645974370234693 {Pose: {Head: [84.72552815072545f, 0.04366065151974821f, 1.1719688392370549f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1899828588571482 62.38171696603294 -0.40902475248848336 {Pose: {Head: [85.24731074284097f, -2.3702958351079197f, 10.175978095459397f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1593063611244452 62.17772404248164 2.923570593941048 {Pose: {Head: [0.21788875999844945f, 8.881940725783528f, -1.7303241051925984f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5516382252853467 62.364624381301184 -0.33987876774492054 {Pose: {Head: [88.39027666885328f, -15.4940983814562f, 0.04794470576786793f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7176257180642223 62.11804782109016 3.2159034243658677 {Pose: {Head: [-0.2344969628035354f, -0.03558454243344278f, 0.0026152109052886533f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9565741198723325 63.02875844225258 1.7145425867670312 {Pose: {Head: [-91.71944074696219f, 0.4716144294697551f, -4.400638142735153f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.83575128420315 62.807986573631425 3.288288517335168 {Pose: {Head: [-90.47141517758519f, -23.017082059829765f, -0.7082409553299693f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6873265955207124 62.167882782245094 3.286766512840847 {Pose: {Head: [-10.192682012984331f, -0.1284269281502024f, 0.07304717720742798f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1781681405037547 62.42798251771148 1.5249617461816274 {Pose: {Head: [80.50326510841377f, 32.56191608889482f, -1.3728379159204347f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5171118273959077 63.70237509747399 2.5507460917030116 {Pose: {Head: [179.00310128005106f, 1.560789645072246f, -0.16214094366123755f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4219530085650187 63.01663487123433 1.9612680710117298 {Pose: {Head: [-86.68280852708365f, 44.06970635619631f, -4.703880106570482f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3907319479449156 62.14866871432068 1.642947289933034 {Pose: {Head: [59.013688672894915f, 3.195792280609725f, -0.16295512647692165f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0615366062756073 62.214194149548206 1.6944690701955754 {Pose: {Head: [56.90344596661446f, 3.4169185735491587f, 3.470324616573878f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3397063494092474 62.35752610200184 1.6039508338607753 {Pose: {Head: [78.18085117536869f, 4.4979220598371725f, 6.133991730367032f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7295083887209353 62.152125566367445 2.8843642243113883 {Pose: {Head: [-1.036960096966844f, -6.598356422255453f, 4.528521362872015f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3199943278678243 63.00519345214262 1.9729892834040208 {Pose: {Head: [-86.42992751294588f, 62.99282536194074f, -3.106793807824449f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.678655482851825 62.233885898339175 0.7500266892505167 {Pose: {Head: [73.5523331753224f, 0.9416537891589599f, 0.7752069444997788f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.289203535729409 62.17355120379411 2.948547821070827 {Pose: {Head: [-0.5108409973933854f, 8.815866804227563f, -2.7497200444384755f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.737804551455877 62.339521246444804 1.6792503538900085 {Pose: {Head: [81.56271425653807f, -4.160542759298466f, 3.836497655188701f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0503981728183833 62.11650344025516 3.1500231523975675 {Pose: {Head: [-0.07077692389789006f, -4.946176425305413f, 0.0018455085796975838f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6879716259265067 63.661003945492524 2.9811435481397495 {Pose: {Head: [-169.89782771004866f, 179.97812575444078f, 0.02347393123208424f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3018063850226832 62.09032415065392 2.16201552956766 {Pose: {Head: [43.10837404027571f, 4.389242412138426f, -0.007558093016356991f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.014833208496878 62.3359896396584 0.9514600386173997 {Pose: {Head: [87.02834801295076f, 1.2940498703271204f, 1.9778566107471336f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7736068654561415 62.85012066978936 3.1544051963665147 {Pose: {Head: [-14.278790435595289f, -3.996588167425744f, -86.2537071338136f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2498195348979717 62.17414861407422 2.995491340269004 {Pose: {Head: [-0.6995584240369528f, 8.774834396482461f, -5.9207398300873075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.654374130437093 62.6673682814004 1.0702113728216736 {Pose: {Head: [99.21384247122789f, 132.7854099818976f, -5.731405464508266f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.8233884274462375 62.406836498268156 1.007310105272314 {Pose: {Head: [91.09533329878437f, -90.96323219262099f, 6.790124540078521f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2988960104398048 62.30360862433029 0.04017734121903027 {Pose: {Head: [84.57350591137833f, 30.56979382782136f, 0.06848473949587974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7219224258859307 62.32792328906226 1.6718358208832682 {Pose: {Head: [82.72316618590975f, -4.407033934572424f, 0.27377607817108784f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5200912588446396 62.48822741142402 1.128384307129234 {Pose: {Head: [96.8172257891218f, -170.8406306311602f, -1.6776739201197957f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0623403623515275 63.037900678518156 1.2765471907722827 {Pose: {Head: [-96.10542255436486f, 8.418528191451543f, 4.729017390513844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0312227619499543 62.15017445907077 3.069845235213432 {Pose: {Head: [-0.8011852972521288f, -3.555446961483639f, -0.8846712880055051f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65521094171925 62.23807450167411 3.0676799881408714 {Pose: {Head: [0.7270142030544816f, 3.6002770055292004f, 18.774681584180755f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3546661634333949 62.112609566354095 3.0093933536354447 {Pose: {Head: [0.9938176161732054f, 4.2521459052367065f, 0.006420574225021805f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2093248762506774 62.47614428916022 3.136070524568016 {Pose: {Head: [96.76745401555247f, 169.88257872918143f, 0.08829420704257349f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0943225947502624 62.116423402579635 3.214107636072053 {Pose: {Head: [-0.04399578645809292f, 0.36757708328154926f, 0.00039196263542806865f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7066856239811874 62.292189096235646 0.8302320207588557 {Pose: {Head: [73.19164880495778f, -1.3706619171673815f, 1.7647013143253254f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1533360500047996 62.37045941179235 1.702735614370539 {Pose: {Head: [89.36279126864379f, -11.295521382951794f, -1.3491044774248664f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.143927573693866 62.17274219575839 2.9128693970908905 {Pose: {Head: [-1.2793866597573609f, -9.717649767644513f, 3.31883880438225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8098149608704335 62.45472468900173 1.2723419119319024 {Pose: {Head: [93.75209385598093f, -90.10386404283227f, 5.896913941009153f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2084756054031507 62.44041405242545 1.2008892211858644 {Pose: {Head: [88.19321927494761f, -33.42741863776701f, 5.961905232849735f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6996614647244876 62.360522175467956 1.571164863022394 {Pose: {Head: [81.349813697611f, 0.4342944115235201f, 2.991506428153025f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3123997579061803 62.278997018682276 0.5232315299761925 {Pose: {Head: [78.8704765314483f, 0.07994078789372545f, 0.21997931545527005f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2935519260683361 62.91971590599178 3.0152838518798495 {Pose: {Head: [0f, 2.1186521995405805f, -90f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.706394489884411 62.4030239709847 0.11485727829455517 {Pose: {Head: [87.4912298179959f, -8.110121642386678f, -0.3547224573522687f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7101663449046611 62.49275351479201 1.1205947817250215 {Pose: {Head: [94.39749812500288f, -89.98123471139365f, 10.771763757259668f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3803128704933696 62.32726167810416 1.067264722183186 {Pose: {Head: [87.27264690724857f, -0.8379009578036408f, 3.4739595540068464f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31421162210515463 62.092399236557505 2.111554435570816 {Pose: {Head: [43.161693000873015f, 4.112597008032523f, -0.03212065061846638f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.704960259069454 63.06411706957866 2.0799585857987557 {Pose: {Head: [-87.25565526064925f, 38.03235380824003f, -9.565633538760347f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38611709047189946 62.28128722847903 0.10535309500098677 {Pose: {Head: [78.92337373157423f, 7.804853588591807f, 2.273818727702241f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.520772638172525 62.33073236506357 0.9615633208809079 {Pose: {Head: [88.7975028929125f, -0.9133468514787109f, 0.26942938827326973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5444941206581492 62.506068924129806 2.146464485981867 {Pose: {Head: [74.65331552177098f, 69.00544756001355f, -29.59912432008778f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8347387377959599 63.06311196817832 1.8224914449625964 {Pose: {Head: [-95.756919820052f, 41.40013863290401f, -3.999373458257733f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.489090623537874 62.30500766627564 -0.22523510581313244 {Pose: {Head: [84.13430794156788f, -4.428113239991492f, -0.28977054723539514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9962335248359044 62.20240654348938 1.3657935597626567 {Pose: {Head: [60.26319189429034f, -14.4110985395794f, 7.45226563537256f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2063198945953635 62.365774588185225 0.2557098724877981 {Pose: {Head: [78.19019097492601f, -2.701590255651752f, 6.0004105003677415f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.799822206299015 62.91056197640633 3.1938237285593765 {Pose: {Head: [0f, -5.16317939003585f, 90f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.615279802185572 62.368474753232825 0.8985902558031513 {Pose: {Head: [88.77612354127302f, 3.33461519400636f, 0.260366241727085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9108029293601443 62.15214082152968 2.947093988134599 {Pose: {Head: [-1.0563722531260649f, -4.034049265535683f, -0.7833165860571144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 3.060719735215074 62.87139405831533 0.586908623268714 {Pose: {Head: [-80.56200174740114f, 127.05439857524634f, 2.526082014906348f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7828052549435642 62.32094626455753 1.0698922212708577 {Pose: {Head: [88.61205555232944f, -1.2618907906711319f, 0.4746940097229688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.854827408442512 62.54375655491364 1.6442327836216517 {Pose: {Head: [87.2064274935012f, -41.78701564009083f, 9.479656589071514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3055974027327688 62.42938207851928 1.2627751979188693 {Pose: {Head: [82.5682817018877f, 48.027146191058215f, -1.3613963661224766f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1234371693832745 62.45052214184646 1.843593484469998 {Pose: {Head: [96.31152193732186f, -172.39638989575482f, -0.24006248976917205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48994139955469773 62.26692764217248 0.20636567724004184 {Pose: {Head: [78.67500384142791f, 20.0017613329173f, 0.1523712341317752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3468121723111652 62.407659677059634 3.200547462025623 {Pose: {Head: [-0.5218269234544085f, -3.7934996948102913f, 7.887887185469739f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.091641215044279 62.3415989192255 1.7239297976920833 {Pose: {Head: [89.81466040167608f, -13.840990155983633f, -1.1837145773701945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7002903311396114 62.39738993680415 1.1048719133721123 {Pose: {Head: [86.04762678605645f, 25.07301405461378f, 1.029384678085588f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9349405584496115 62.44282589921515 1.266763151177686 {Pose: {Head: [88.48784404003511f, 89.93649105705562f, -17.24224411720153f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7029827330446626 62.31570560896232 0.9611939399873332 {Pose: {Head: [83.44137693220098f, 52.993563660860545f, -3.414888557817676f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2499918519900293 62.40462020933832 1.3558654928277185 {Pose: {Head: [82.8016055751691f, 47.96871974639755f, -1.175401011211873f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8823714762173398 62.44941024255799 0.7094359930458817 {Pose: {Head: [92.24576299043045f, 102.61420096355494f, -5.611383401717148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5657455437257735 62.10673427013618 2.013265390864979 {Pose: {Head: [42.38087011750135f, -1.316960689944362f, -2.917538908724939f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35414361759129626 62.11515523444696 3.1280409403760943 {Pose: {Head: [0.29277569143693194f, 3.9843887968285068f, 0.0008811997740161486f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3900453015632843 63.057938438264955 2.199808940454391 {Pose: {Head: [-86.68038164662102f, 39.81391183552568f, -5.323729371611048f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5329022903680816 62.91998751791981 1.5650235761959594 {Pose: {Head: [-89.34211128785363f, 41.95281183136558f, -3.700603515935664f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3221002719515473 62.3517059334094 1.0685930098438186 {Pose: {Head: [87.09303822875268f, -4.542146335295446f, 3.80368061664976f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9533337534175627 62.15519442845846 2.1246528185242286 {Pose: {Head: [43.10657778544473f, 8.62485689680841f, -1.5862201178217632f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.297979584937701 62.604065740217294 1.0988911494464084 {Pose: {Head: [100.69026291155272f, -179.99728955689358f, 2.97318203204227f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0529516093427977 62.98509275959343 1.684324526461901 {Pose: {Head: [-91.75098347063776f, 0.6181947818767205f, -4.2127496936841835f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5606477548270132 62.11378227452293 3.03543861422045 {Pose: {Head: [0.6726090184069266f, 4.3144692749684435f, 0.0017438799162383953f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4415860229645759 62.15218080128828 1.4976966476874938 {Pose: {Head: [59.19355770473654f, 0.1008621939381688f, 0.025438667047872142f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand -0.31729930376896737 62.90206724952063 3.2185086660662368 {Pose: {Head: [2.2221715663448482f, 6.371350925378788f, -85.11207517644186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9221741380497281 62.36453068665027 0.9641766471308209 {Pose: {Head: [86.58471891507173f, 7.610808433651103f, 2.152141293954332f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7023282938034883 62.19888148055674 3.001841028116612 {Pose: {Head: [-1.950465699608677f, 1.632903033549704f, 1.0574983575094898f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3512336280745336 62.11788906031808 3.1432279697002903 {Pose: {Head: [-0.3864618704548626f, -7.2063670283527275f, 0.003709250347708118f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2121651973071401 62.787135163416764 3.0416664707177974 {Pose: {Head: [-4.185112009995253f, -8.036783314880392f, -78.92252605606019f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5869324331407357 62.17696140357379 2.120959886169595 {Pose: {Head: [43.102485727169984f, 7.524411787466222f, -3.3772799640318087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.185858536747955 62.192411857002476 3.0448101403590786 {Pose: {Head: [-0.703219604022636f, 8.86621036359924f, 2.3782227771845457f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.30818093568283206 62.15218786016568 1.574610792167845 {Pose: {Head: [59.216867313019236f, 1.1147500677237796f, 0.09988366928825217f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.12595733819347332 63.73765500579103 2.556657022132934 {Pose: {Head: [-178.75052309749938f, 3.841567411516884f, 22.034865403975846f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5483122696664977 62.70654652261091 2.867149377196049 {Pose: {Head: [96.005676094113f, -150.97333088833204f, -1.0318692187214729f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6531618354837823 62.36149284422331 -0.4190833287214481 {Pose: {Head: [84.22101838807838f, 0.03252591405029961f, -1.008767133467347f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5988094788439369 62.11760753231957 3.1347420242558575 {Pose: {Head: [-0.3367476027251435f, -7.3260601936361605f, 0.02647969816319672f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5888064205907004 62.116932660816246 3.1895774599030493 {Pose: {Head: [0.12809874002307314f, 4.084689475583321f, -0.2213097186893173f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4306777615149786 62.1543374619264 1.4281666406155933 {Pose: {Head: [59.20884295979902f, -0.05999078013154979f, -0.43748306797911907f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38418552004430734 62.26870593094333 0.6668928587025041 {Pose: {Head: [78.91238420479677f, 1.3808931433170195f, -0.011539351409532075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8103178170750334 62.393698110744126 1.2172005405090842 {Pose: {Head: [81.12071308015162f, 60.28817071381659f, -3.1762863586413133f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5846741992128013 62.15264422871604 1.3501318372742988 {Pose: {Head: [59.227370318410955f, -0.9549056867790374f, 0.04843830603928967f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



