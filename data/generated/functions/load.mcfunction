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

summon armor_stand 1.85336645 64.59367309 1.13851604 {Pose: {Head: [45.401020056078565f, -9.705132498826401f, 8.873467116462065f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.34249123 63.42984729 -0.13853512 {Pose: {Head: [47.05482976591294f, -24.033861509192477f, 14.441090102142635f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.36064950 65.34401886 1.11364909 {Pose: {Head: [-136.6337106551545f, -5.426374002457838f, -2.2763711856082534f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.69586766 64.66063467 0.43849542 {Pose: {Head: [-137.85702153340648f, -22.257195905995935f, 23.908715732081635f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.79584819 65.73758482 1.34777915 {Pose: {Head: [-144.26669140165063f, -4.713119786415811f, -4.323654956025702f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.62064941 64.81106397 -0.03632591 {Pose: {Head: [178.84716454889815f, 37.94922164795619f, -39.67578844651877f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.27900367 66.58761000 2.40175712 {Pose: {Head: [-134.95774689192748f, 3.6727589525221673f, -3.9417953793960256f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.37072336 66.59731563 2.40160998 {Pose: {Head: [-133.94681481508167f, -16.990800215480057f, 13.129032164254552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.01596346 66.26048968 2.07320980 {Pose: {Head: [-135.08489518049103f, 3.289418899164434f, -3.121665967256501f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.33494628 64.43179747 0.55966713 {Pose: {Head: [60.76924923540722f, 51.60871456225082f, -26.670478176049613f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.10761986 66.92383727 2.75912757 {Pose: {Head: [-134.1609697146853f, 10.391733654662488f, -10.3874689135169f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.66391683 64.44631600 0.15120177 {Pose: {Head: [-139.8814546203526f, 26.238949534621305f, -19.646405271373254f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.48960984 64.56067059 1.12441904 {Pose: {Head: [44.875115070233456f, 1.3721113926617972f, -1.3423326397234785f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.93092296 65.85782679 1.46093111 {Pose: {Head: [-142.33414556654787f, -6.280967896895689f, 7.027902072233095f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.70114749 65.76633456 1.65914483 {Pose: {Head: [-132.011321712457f, 18.746789132801652f, -18.068624051960324f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.09365528 66.27834976 1.97904472 {Pose: {Head: [-139.37393291482988f, 9.4517313910266f, -7.991387436514054f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.40266972 66.06690582 1.74684216 {Pose: {Head: [-141.505532766172f, 2.9838727684713477f, -0.005201473445554181f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.24656827 66.54776548 2.47453011 {Pose: {Head: [-131.3976928980642f, 34.152789907610504f, -29.097807587239405f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.42972216 65.84303909 1.61846140 {Pose: {Head: [-132.01225387798962f, 11.326319424816646f, -7.35947694733435f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.86554937 66.87528618 2.82871973 {Pose: {Head: [-129.5160677781926f, -25.891994656865382f, 23.633904839296726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.76487655 65.55735501 1.20977026 {Pose: {Head: [-142.6726993685665f, -9.106013487243773f, 4.112434157377075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.46529119 66.28600718 2.13068452 {Pose: {Head: [-133.47266593674073f, 30.5752816392266f, -26.832509050928934f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.88076356 65.22822436 1.48019245 {Pose: {Head: [-110.21109523263415f, 59.00815458541673f, -40.824558959647824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.92224940 64.33323838 0.24183271 {Pose: {Head: [-129.57294440242765f, -25.171517403443616f, 18.186744847331408f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.57482730 64.02942884 0.60364660 {Pose: {Head: [44.077997088653014f, -0.39796280200059453f, 0.4180918730284095f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.28579233 64.95419083 1.50162640 {Pose: {Head: [45.41215737989902f, 6.592560627875f, -6.7825130755615f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.56902796 65.01407699 0.82067967 {Pose: {Head: [-135.8741518523767f, -1.5074050873098852f, 1.2863429765553185f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.94505546 64.95537861 0.88638109 {Pose: {Head: [-129.65799194733063f, 35.5107940793595f, -30.254752713820423f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.18759756 64.82113407 0.55793062 {Pose: {Head: [-140.25018476401448f, 8.731556484249133f, -10.608422513085467f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.79074863 65.21035908 1.01163195 {Pose: {Head: [-136.55042505881622f, 10.71259475060396f, -12.004806777433899f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.96666693 65.13746877 0.92210001 {Pose: {Head: [-135.80705480901537f, 12.727546648224987f, -12.672146221714518f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.31058168 66.64560154 2.46972560 {Pose: {Head: [-132.02376264678537f, -23.898713936896893f, 19.297769264100463f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.54336896 64.79784972 -0.04330948 {Pose: {Head: [179.17546597490542f, 38.345143978975656f, -42.30966722511017f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.92570635 64.94266617 0.77618017 {Pose: {Head: [-133.55055069825352f, -10.052631857944476f, 22.577221806874515f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.74871374 65.89153899 1.70101447 {Pose: {Head: [-131.4664146785074f, -1.232881854100481f, 1.4045382832734377f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.70203212 65.33080896 1.13085115 {Pose: {Head: [-136.20706228328245f, -5.872824837689408f, 3.8674626477168927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.98868624 65.09923958 0.91151483 {Pose: {Head: [-135.31477729066347f, 3.148489583954268f, -3.576280951774715f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.57534689 65.70627898 1.49267002 {Pose: {Head: [-134.82657453472308f, 1.1038419742069994f, -2.040928075027097f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.49488530 64.84874576 0.73561143 {Pose: {Head: [-132.36597958066346f, 17.320229638675784f, -21.884396354729713f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.21293093 65.51253595 1.67685738 {Pose: {Head: [-120.09864361062158f, -45.294903103332906f, 35.620199930816206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.32298261 65.50144159 1.07352991 {Pose: {Head: [-148.79045738357829f, -13.524818458466665f, 13.11495811045026f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.83731592 65.86438126 1.48864596 {Pose: {Head: [-143.13542286668238f, -7.906017147342534f, -1.3022341214880864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.12973714 64.56045272 0.18626324 {Pose: {Head: [-60.561100296121076f, 156.10495140663568f, -29.658121856670196f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.98499670 64.48115617 0.18327398 {Pose: {Head: [-140.63254838207837f, -6.702850806540597f, 14.538341715397413f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.89973350 64.71190830 0.58627349 {Pose: {Head: [-133.14230097668184f, 14.538709697436218f, -15.143060285805184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.28842311 64.42646497 0.32958510 {Pose: {Head: [-129.20011443497117f, 16.690815652871215f, -19.044025171893253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.45359472 64.82257228 0.83158299 {Pose: {Head: [-108.32934860414393f, 75.69368840857393f, -36.35811593159831f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.38210964 64.56748854 0.96915251 {Pose: {Head: [-98.40081544776852f, 77.17044329707876f, -51.14400615396756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.25383769 64.46235967 0.35270857 {Pose: {Head: [-131.10575084815812f, -32.48577323054355f, 27.43269894311517f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.41402913 64.58424333 -0.03360282 {Pose: {Head: [178.48397199719187f, 39.60002525927462f, 48.716194240558885f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand -0.04434490 65.43558069 1.83990124 {Pose: {Head: [-95.24136765169132f, 81.6869511154177f, -44.521283558702066f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.12985725 64.39790289 0.39900969 {Pose: {Head: [-88.49018312923582f, 100.9356954812685f, -41.44633985195508f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.59867478 66.84295802 2.69940699 {Pose: {Head: [-133.3372779499094f, -14.130108789653757f, 13.755807174506325f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.50728753 64.14149759 0.05247431 {Pose: {Head: [-76.56036808236009f, 123.80712061085066f, -43.43875690935867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.48332441 64.89732534 0.61339705 {Pose: {Head: [-137.90903592662565f, -2.334093636623325f, 1.571539036308422f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.13639083 64.73746570 0.49231034 {Pose: {Head: [-135.50367522317924f, 3.307078293349062f, -4.794897735888986f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.87808274 64.69839594 0.56578243 {Pose: {Head: [-132.97372036363427f, 18.98555354881536f, -20.04940709194443f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.47093784 66.32195478 2.15046459 {Pose: {Head: [-134.35088590312643f, 8.65712112039403f, -8.559942214947666f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.18712601 65.95330489 1.48679333 {Pose: {Head: [-141.44831495944797f, -5.262959413818787f, -11.667075260482543f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.30845844 64.81915978 0.63102091 {Pose: {Head: [-135.0014960278994f, -1.9487702263644455f, 1.8767963701079822f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.01331679 65.82666657 1.66832711 {Pose: {Head: [-128.2792192588654f, -8.972154236299248f, 16.602209928399823f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.02239529 65.93864893 1.80790527 {Pose: {Head: [-131.6908006090057f, 30.87475394339953f, -29.329684235342587f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.71960282 64.42799683 0.43166934 {Pose: {Head: [-129.45579894312246f, 38.730607505408905f, -41.22146908557938f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.56958241 64.30088454 -0.06369372 {Pose: {Head: [-46.37818458053209f, 177.36274460201128f, -21.09500580344461f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.73076710 64.66828986 0.40345277 {Pose: {Head: [-140.01359162136328f, -12.27992251558744f, 12.82900388224406f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.74556332 64.49225725 0.18780057 {Pose: {Head: [-139.3093145154195f, 26.06723587419839f, -20.167770511991115f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.72459466 64.51998481 0.23740876 {Pose: {Head: [-136.79538599170132f, 31.006092301566664f, -25.452045307925594f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.80630373 65.81957644 1.53268962 {Pose: {Head: [-130.93275521693116f, 3.8688320481629934f, 6.009924380334465f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.36520148 65.57132328 1.25159597 {Pose: {Head: [-135.20499996400437f, 27.23308618121223f, -14.876613252757473f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.37778102 65.92840562 1.54077034 {Pose: {Head: [-138.75919149145622f, -19.331116431837614f, -1.1159279341393276f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.36088941 64.68331497 0.70354603 {Pose: {Head: [-104.10920733119907f, 81.80632566994741f, -36.95188007847826f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.67024648 64.99706413 0.88213879 {Pose: {Head: [-130.8550081327386f, -44.29982589037196f, 38.413906176989954f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.10061588 64.47288595 0.62331308 {Pose: {Head: [-80.44191579025319f, -109.55861072222635f, 51.99417647492744f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.65318465 65.02121833 0.77232291 {Pose: {Head: [-138.22582657510137f, 11.333235748839343f, -16.403497022458716f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.69134350 64.30841360 0.30051575 {Pose: {Head: [-83.00508177614358f, 116.70744677512239f, -44.564669902568816f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.80026669 65.64717954 1.42860529 {Pose: {Head: [-135.07285407985296f, -4.772907989437816f, 4.944059328071344f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.32231008 64.87135792 1.00478457 {Pose: {Head: [-102.84103182390685f, 89.94082682323106f, -43.77685607611767f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.08785817 66.30034770 2.16717129 {Pose: {Head: [-131.86528674392918f, 13.922738071263623f, -18.976436371448262f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.24280529 65.75780444 1.12632081 {Pose: {Head: [-158.2344857674031f, -9.067049438294022f, -3.526038806018184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.22821511 64.94324605 0.95797614 {Pose: {Head: [-113.05774299706727f, 62.91197867618921f, -30.96082199664603f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.00119161 64.61719420 0.09321949 {Pose: {Head: [-175.78859007564103f, 17.83979288009481f, -80.21936471040988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.12959946 65.22579948 1.05749381 {Pose: {Head: [-134.1369079439578f, -10.979031262341072f, 18.84482654863848f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.12675683 65.13849754 0.88135012 {Pose: {Head: [-136.51921358624952f, 9.022797928314153f, -10.405241378211285f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand -0.33647877 65.89159954 2.09927950 {Pose: {Head: [-115.31726744775791f, 46.95460166441351f, -39.2108626172526f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.34990729 64.74486922 0.89403978 {Pose: {Head: [-118.55868711976765f, 66.14563187062954f, -54.89646238073889f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.12244023 64.76709632 0.39341422 {Pose: {Head: [-137.3596046400553f, 23.288764838024367f, -11.811844659301794f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.53146840 64.50619058 0.23295929 {Pose: {Head: [-140.66586478360392f, 17.658882165834118f, -16.434270484068858f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.04224876 64.92046369 0.71388751 {Pose: {Head: [-135.55218174415944f, -6.210474654920138f, 18.9961934188897f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.83543147 64.30747906 0.41428527 {Pose: {Head: [-100.01070753520163f, 94.58661943511711f, -46.340298242321396f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.73888030 65.49983109 1.55298623 {Pose: {Head: [-120.76199381866347f, 53.58715355307151f, -41.15696288540086f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.33875062 65.14560437 0.91393504 {Pose: {Head: [-136.0644407351014f, -2.960131119240672f, 1.05628261849406f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.93453558 64.39741891 0.66874651 {Pose: {Head: [-92.56271206631631f, -94.33434975559669f, 53.563990539859596f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.52319369 65.76747539 1.62016528 {Pose: {Head: [-132.73414179673023f, -46.191673339091516f, 34.38433588055334f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.76079306 66.01653493 1.72632704 {Pose: {Head: [-138.72430309111212f, 35.20934908336581f, -26.315521898872923f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.47185834 64.86091675 0.53087267 {Pose: {Head: [-136.73079873288833f, 22.146843627652956f, -12.945413564535642f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.13711225 64.90304655 0.66942501 {Pose: {Head: [-136.5726819341967f, -4.717884790561947f, 16.952066207861673f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.88166913 65.18810173 0.94783691 {Pose: {Head: [-133.19621538043907f, -20.017261163228785f, 13.695292900061219f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.11014969 65.28355731 1.14330301 {Pose: {Head: [-122.09012511981803f, 49.45437842447433f, -32.14710190796848f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.16026392 65.00855611 0.51175571 {Pose: {Head: [-134.24086152073107f, 8.89288170566972f, -10.582556348819049f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.97758191 64.34214084 0.41969263 {Pose: {Head: [-98.25303569092691f, 97.20599803630672f, -46.79644285268521f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.11017958 64.77882605 -0.00776543 {Pose: {Head: [178.8034802055988f, 12.89432480250486f, -51.467557564015834f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.80030077 64.94351505 0.63930073 {Pose: {Head: [-128.22179788628947f, 27.969981369728092f, -29.361731658378005f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.19774672 64.37653623 0.18197283 {Pose: {Head: [-133.53753439236098f, 45.44926972476085f, -39.99831116333825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.55808210 64.26052427 0.42323830 {Pose: {Head: [-86.42383770066424f, 90.88959933847286f, -46.67576369455282f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.07940385 63.95590435 0.26741415 {Pose: {Head: [52.04077675276561f, 1.9907498514279625f, -2.748310559174996f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.61480591 63.92917363 -0.32265483 {Pose: {Head: [-58.978430734464894f, 146.37718054200704f, -35.98496735300715f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.25761395 65.91058744 1.64797854 {Pose: {Head: [-138.97874238994052f, 2.8424198309677347f, -2.9699557504797043f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.62004438 65.19838689 1.45142179 {Pose: {Head: [-98.96584296403522f, 92.9274767187787f, -53.429305130755004f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.70000785 63.88904520 0.07509637 {Pose: {Head: [50.14109577028745f, 24.536396540993998f, -16.842162652563864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.18104975 64.11882806 0.33869941 {Pose: {Head: [-85.7892634891098f, 98.17821887725775f, -46.96425889990008f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.88598423 63.80677599 -0.00094503 {Pose: {Head: [-92.2726632272307f, 94.0664380345126f, -42.61063339873713f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.84687473 64.22705662 0.37559485 {Pose: {Head: [-99.31869672762393f, 95.79229484078799f, -46.708083748489514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.90441793 66.84993599 2.71270775 {Pose: {Head: [-131.60850684344828f, -19.75547464201892f, 18.962275128468928f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.90396826 64.83753923 0.86460830 {Pose: {Head: [-110.10548536624277f, 75.40475922392683f, -40.49849829567647f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.01604481 65.22823779 0.53497687 {Pose: {Head: [-141.32035242845978f, 25.62966774421909f, 19.204499738344794f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.42984519 64.88664883 -0.01195394 {Pose: {Head: [179.35641296385512f, 13.715206106051214f, -21.146071974520165f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.51606461 63.79665040 0.05989656 {Pose: {Head: [48.160218691707215f, 16.3870093750423f, -9.733677960235777f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.14531476 63.97223885 0.08709803 {Pose: {Head: [-116.09642693574673f, 100.95762901654683f, -85.64674849808681f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.97918603 65.01915625 1.28149402 {Pose: {Head: [-110.30167874444376f, -72.8225985748063f, 49.617198962469494f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.13837759 64.48639906 0.19128982 {Pose: {Head: [99.38511265288633f, 104.924699038324f, -48.711403223926176f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.87978099 64.59362641 0.54525418 {Pose: {Head: [-85.06729113237058f, 115.16706675372436f, -40.56428328322645f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.75034036 66.22661709 2.06829931 {Pose: {Head: [-126.72727436861165f, 16.327437692168182f, -7.759352855478335f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.47716904 64.11374345 0.20441336 {Pose: {Head: [-113.85978732153362f, 68.0538262783804f, -50.3841639267559f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.02651524 65.00459218 0.73771715 {Pose: {Head: [-135.0019547385013f, -2.025057335061819f, -0.27572340979209464f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.04176274 63.67637993 0.05526067 {Pose: {Head: [43.59223144623207f, 24.832319990673078f, -3.7457296849302426f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.25899258 65.02337884 1.18080601 {Pose: {Head: [-110.82916611053132f, -66.21354747457674f, 44.27746114569576f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.65867210 66.17394441 2.05094171 {Pose: {Head: [-126.32437270706842f, 19.265154860736803f, -9.909441489695219f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.88143285 65.26008670 0.96977829 {Pose: {Head: [-127.04959277907224f, 24.32312087010573f, -28.73759734264371f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.40649431 64.18789595 0.28146748 {Pose: {Head: [-113.99974518647582f, 67.82676357757906f, -50.37277820872099f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.60730616 64.70435325 0.66497324 {Pose: {Head: [-126.2290957589887f, 38.47400606373196f, -32.442018885017845f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.70361235 64.85019247 -0.05806819 {Pose: {Head: [-175.79190339790037f, 39.147503695888275f, -8.766515896131427f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 3.33611145 64.62826106 0.62932536 {Pose: {Head: [-123.11195040985231f, -23.07092731572564f, 34.900633347791015f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"apple", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

summon armor_stand 910.09962696 64.60586555 -151.88941841 {Pose: {Head: [-85.08279631359851f, -15.723052698727647f, -2.8343792759578688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 907.91375493 64.51981054 -152.12497239 {Pose: {Head: [-83.0974470081024f, 27.513637378701546f, -9.306999961135643f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.69103410 64.70220767 -151.50957666 {Pose: {Head: [-94.07224666222443f, -0.05354735150773824f, 8.691305067237211f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.50856318 64.72098415 -150.89703262 {Pose: {Head: [-85.11112337637184f, -50.73868082825701f, -16.366330560001405f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.53012654 64.62201267 -152.01349529 {Pose: {Head: [-93.58327501781159f, -16.770548401016196f, 0.6725562804245533f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.65013949 64.59673182 -150.55562919 {Pose: {Head: [-89.67335730621916f, -35.613516320120816f, -3.3576941966103733f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.76685089 64.65362222 -152.06208314 {Pose: {Head: [-90.77040364538777f, 13.493875665130918f, -2.1678119591526523f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.79560676 64.65805248 -151.10858310 {Pose: {Head: [-96.082362120644f, 8.272236080547271f, -2.0545511560473124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.75937909 64.68770652 -151.18165204 {Pose: {Head: [-97.48843918472707f, 10.050720448758094f, -1.4678777737224593f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.56732336 64.63268293 -150.83334980 {Pose: {Head: [-84.73297840018515f, -14.343822013525468f, -5.230992652267178f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.62795848 64.70025387 -152.16445342 {Pose: {Head: [-91.44346962085095f, 0.07396681732208239f, -6.662935389969271f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.94639208 64.59492215 -152.30727312 {Pose: {Head: [-91.1701583452274f, 48.77217855522989f, -9.19684835282383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.69638320 64.66037953 -151.43350156 {Pose: {Head: [-97.35985383725392f, 40.487495141511694f, -6.044905334458174f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.01578072 64.67882718 -152.02374390 {Pose: {Head: [-88.86252481664661f, -7.095717766039375f, -0.5293686182950527f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.50513566 64.66902379 -151.82076000 {Pose: {Head: [-89.8547297985038f, 0.6888938130450097f, -12.275705554843643f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.17513648 64.63621411 -150.53573920 {Pose: {Head: [-94.59456679675459f, -18.01895644250462f, -0.6685136412897158f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.15561300 64.59899558 -150.86061068 {Pose: {Head: [-90.49242234553212f, 3.655625011292825f, -0.82005499848125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.82992356 64.60071384 -150.48982130 {Pose: {Head: [-85.28418833072422f, -3.6794133217719582f, -2.8726121126448096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.61616060 64.72345149 -152.02059658 {Pose: {Head: [-97.0913901429307f, -17.215685904613917f, -2.3468727280883823f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.07434334 64.65547177 -150.97877340 {Pose: {Head: [-93.62389736446994f, 37.63496257732236f, 1.1874555145218806f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.52549461 64.54833414 -151.04510621 {Pose: {Head: [-79.68447702953104f, -20.526118525085277f, -5.6721334245788855f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 907.97599627 64.06489337 -152.96781013 {Pose: {Head: [89.4398312597799f, -12.060191269699159f, -11.71830982096271f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.85991632 64.60919287 -150.75769836 {Pose: {Head: [-91.08091396741113f, 13.316214305176679f, -1.4486806088043698f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.34400300 64.58037218 -151.96956371 {Pose: {Head: [-90.44584259033762f, 25.26357503889683f, -1.9740286941677212f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.97045129 64.65731099 -152.17691114 {Pose: {Head: [-96.48434011931006f, 2.8740820187387284f, -0.2088078710006277f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.69701512 64.57834749 -150.63292083 {Pose: {Head: [-85.11704323282522f, 5.355340472524669f, -2.702019279020502f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.05006820 64.65313243 -152.32618994 {Pose: {Head: [-95.17938564098066f, 6.661839206958242f, 1.7135005166267139f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.78664182 64.61577058 -151.72793390 {Pose: {Head: [-90.35137282945067f, -44.48892980692581f, -1.4344784833028503f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.62046036 64.65140389 -152.30042832 {Pose: {Head: [-95.16907455102104f, 0.5023228009389934f, -3.3662669818584554f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.22069887 64.75148687 -151.49875012 {Pose: {Head: [-99.90409447273271f, -12.22511239010051f, -3.5655375367614144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.06323654 64.57843943 -150.97717435 {Pose: {Head: [-90.66435811560753f, -4.303589353753231f, -1.3428743685691633f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.61900635 64.67034775 -151.74036209 {Pose: {Head: [-94.12429291623054f, 16.826296422994353f, -2.1018824347028096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.66587032 64.69085024 -151.54951114 {Pose: {Head: [-99.05288253040382f, -36.994676995903724f, -0.2652543825587123f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.36145649 64.64874424 -152.31816721 {Pose: {Head: [-92.97503498517699f, 7.3047950706510125f, 7.759581831998832f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.99172200 64.58596115 -151.10640976 {Pose: {Head: [-88.76094910850038f, -27.142939340588487f, -1.1312150544881583f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.58951632 64.56020377 -150.80467065 {Pose: {Head: [-89.17815016157918f, -7.896611778665433f, -0.7486609153820906f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.99384405 64.68629360 -151.01433513 {Pose: {Head: [-93.48368417928889f, 38.44574475320438f, 1.8561160034022854f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.59431838 64.70711764 -151.62856226 {Pose: {Head: [-100.40357706778781f, -33.7285461858786f, -0.16096490134648772f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.85719349 64.65247637 -151.85355594 {Pose: {Head: [-95.69806284019533f, 12.012380241815409f, -2.331414084662072f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.59873067 64.57044950 -152.06547351 {Pose: {Head: [-89.79146149201401f, 20.693388310703774f, 0.9976286864646103f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.73483458 64.57188087 -150.63491172 {Pose: {Head: [-85.42525010860217f, -4.3029519777338825f, 9.605370909319278f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.25210527 64.62817592 -150.60162311 {Pose: {Head: [-84.594141525641f, -16.796273833216077f, 1.8334881217933818f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.61583770 64.45043649 -150.47278888 {Pose: {Head: [-70.8466300212985f, 1.00355873469576f, -0.33389391540144825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.41356789 64.56491781 -151.24013563 {Pose: {Head: [-89.56152223332575f, 2.5724134372675818f, -0.7016745312430867f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.44397881 64.57233546 -151.25477447 {Pose: {Head: [-82.11851379802782f, -6.518969199905109f, -2.0594212545158097f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.57525981 64.62819050 -151.23867077 {Pose: {Head: [-94.03215288697385f, 21.757798288772484f, 0.19126795528327684f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.73163980 64.64000838 -152.07410177 {Pose: {Head: [-90.20162448029534f, 6.827979496355431f, 4.8333055547834896f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.21954330 64.58709278 -152.32702316 {Pose: {Head: [-89.88433312751319f, 0.48468156449776895f, 3.795082046871502f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.33550783 64.54157963 -150.74602759 {Pose: {Head: [-78.78709920256102f, -1.461916154169976f, -7.505328414718864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.63607251 64.61299497 -150.52802835 {Pose: {Head: [-84.21469569270533f, -18.85824454594577f, 3.8242679659148555f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.74168184 64.63185586 -150.58006039 {Pose: {Head: [-84.03954537669848f, -20.73343735395793f, 3.741974863724924f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 911.05297346 64.67343665 -151.01476008 {Pose: {Head: [-94.21204651567913f, -34.329384238599545f, -0.3024782712634481f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.14982366 64.56767608 -151.43689170 {Pose: {Head: [-89.75280113309665f, 22.399143729051435f, -0.6163361207598044f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.29772456 64.54475556 -151.25507682 {Pose: {Head: [-82.21114146516656f, 2.3458547313617144f, -0.4554599455940266f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.03855164 64.59736591 -151.85648570 {Pose: {Head: [-91.97147021524748f, -27.324615876958518f, -1.8551196136236452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.51247193 64.57248662 -151.69993050 {Pose: {Head: [-90.3199314990291f, -2.9367112452743593f, -0.24116211296428142f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.93536903 64.59052853 -152.35977547 {Pose: {Head: [-90.10089227907288f, -5.852108114902816f, 7.591087056234739f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.59576335 64.63070171 -151.99582492 {Pose: {Head: [-90.64816306245795f, 1.3606853599626312f, 7.679417992555819f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.65436644 64.66759093 -151.17649455 {Pose: {Head: [-93.62579628662391f, 0.9044378241276152f, 4.87790453850494f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.11250719 64.67468496 -151.56118551 {Pose: {Head: [-96.95408957482069f, 16.938920953604338f, -8.22023342236161f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.04613898 64.67789570 -151.60113820 {Pose: {Head: [-91.46156225313699f, -33.54029290001618f, 1.358691434303936f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.32887311 64.51365666 -150.84312344 {Pose: {Head: [-78.81876984080614f, -1.5284112499799205f, -2.3289501822270378f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.74165130 64.74885025 -151.75118386 {Pose: {Head: [-94.63673516021406f, 25.044888030137255f, 1.200105904083463f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.83484960 64.66872716 -152.37752040 {Pose: {Head: [-90.35672425800458f, -23.712188317747596f, -1.2176486802767519f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.35384473 64.65204811 -152.02231345 {Pose: {Head: [-96.64028001154291f, -13.020674628508255f, 0.06507870761132441f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.65811989 64.63459855 -151.66603871 {Pose: {Head: [-89.80209899143674f, -20.30221573413516f, -1.3496691783041004f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.31589110 64.58183059 -151.45926832 {Pose: {Head: [-88.36765684661805f, -8.36143816164181f, -2.043540285797482f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.60863403 64.71686589 -151.07805859 {Pose: {Head: [-95.39573529166093f, 23.049826096915638f, 0.04625767008020271f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.01145149 64.71001159 -151.50613492 {Pose: {Head: [-99.63283081554037f, -14.55483313754328f, 2.7397789137806683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.56280090 64.68477182 -151.24462638 {Pose: {Head: [-96.70388814311933f, -6.390644646945018f, -4.482138903425353f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.09320581 64.57144937 -150.93505981 {Pose: {Head: [-82.81672241651144f, 23.470288178711886f, -1.1719277306487481f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.32814873 64.57669460 -150.73921099 {Pose: {Head: [-90.62121830712489f, -4.497011470727334f, -0.4016547754892411f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 909.76892490 64.63703621 -150.66342895 {Pose: {Head: [-89.42768284008f, 18.526607177792414f, -1.123124634842328f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.62934299 64.72755256 -151.73579644 {Pose: {Head: [-94.14710833243613f, 22.826388144807705f, 1.5038760045365287f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.13714425 64.57408113 -152.43789330 {Pose: {Head: [-90.04131176654019f, 3.089944179918121f, 0.047234814834722326f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.86183956 64.75096981 -152.39769710 {Pose: {Head: [-94.39158296234592f, -0.6961916481020826f, -0.9195761435744981f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.25531955 64.65720417 -152.15931537 {Pose: {Head: [-88.7877939584274f, 21.440866396107648f, -7.115385233262141f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.27743132 64.64756418 -151.87394077 {Pose: {Head: [-85.28054875800436f, -22.36651311204887f, -4.447393555219668f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 910.84670444 64.57426333 -151.43361619 {Pose: {Head: [-90.26148710850015f, -17.159301757239618f, -0.973967141762472f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.72236188 64.59109638 -152.27967820 {Pose: {Head: [-89.78084088186519f, -4.5888924390466705f, 7.274555497988091f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 911.09311853 64.56672925 -151.04742438 {Pose: {Head: [-89.51961748514978f, -17.159733473985387f, -0.5274011687448543f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 911.17658977 64.55883155 -150.71008309 {Pose: {Head: [-85.41375605692026f, -25.16791635833079f, -1.7016710992912596f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 908.93709551 64.72811165 -151.36521558 {Pose: {Head: [-93.90791479742809f, 14.908832826549547f, 3.209093603424814f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"melon_slice", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



