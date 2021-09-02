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

summon armor_stand 1.76944651 64.15808574 0.81943860 {Pose: {Head: [-93.1608052613225f, -0.02283244591557983f, -0.4126204099695085f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.68380058 63.51844886 -0.26154818 {Pose: {Head: [87.90233092531562f, 0.02541753167653737f, 0.17331875486146395f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.00567729 64.84909823 0.81204357 {Pose: {Head: [-127.63909325534536f, -20.92855453023563f, 21.583191534342184f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.21265565 65.61691887 3.06735494 {Pose: {Head: [-92.13502559867254f, 6.023617807830382f, 4.602472194687241f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.06009290 64.92937324 0.92355287 {Pose: {Head: [-123.87315278692755f, 23.940740184347668f, -21.914424205631214f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.99457822 65.33130356 0.71411232 {Pose: {Head: [179.94578488443474f, 2.0303577902490337f, -3.7188078336797563f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.43065893 65.73728926 2.24826710 {Pose: {Head: [-93.44477893691646f, -26.855158119321025f, -0.80496679688134f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.01635322 64.02020766 0.60699698 {Pose: {Head: [-122.90063384708947f, -55.854902775448686f, 70.29181403282661f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.71695520 63.64390126 0.38405225 {Pose: {Head: [-91.51858924982912f, -88.35997641844783f, 68.74903698804287f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.52111069 65.20392650 0.91823002 {Pose: {Head: [-140.2296487958334f, 11.764902580623401f, -7.745339715486101f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand -0.18728274 65.63997133 2.38314956 {Pose: {Head: [-87.79703149491193f, 72.47880342462648f, -0.44881294846994507f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.48249678 64.13447586 0.64937830 {Pose: {Head: [-88.8884035445059f, -14.348443891919498f, 0.9211799027410627f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.12987582 64.67580698 -0.03894148 {Pose: {Head: [175.6851714430552f, -7.676132456663021f, 8.226778941125723f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.63022707 64.06434681 0.76482213 {Pose: {Head: [-85.89638107747551f, -17.462207678017286f, 3.402722697888146f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.89065313 65.57313033 2.97902040 {Pose: {Head: [-83.77089924335205f, 8.678572173591348f, -1.7528033186196643f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.18652201 64.09669634 0.81397310 {Pose: {Head: [-90.38354048640957f, 3.4391802758312324f, -0.7160071175291821f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.41039172 64.23600865 0.49395928 {Pose: {Head: [-125.98631739091232f, -61.29297515094377f, 46.43259646643431f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.74880961 65.31846244 1.04381666 {Pose: {Head: [-140.70414408563474f, 7.104362583232654f, -0.038173190901357394f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.54724722 64.98665697 0.92557481 {Pose: {Head: [-128.0706087636712f, 28.718059143503417f, -21.11832864355216f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.66175536 63.51778681 -0.26094318 {Pose: {Head: [87.79533446732201f, -0.08939931357654174f, 0.03960132631834257f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.67858829 63.68682057 -0.01446448 {Pose: {Head: [130.15588760345614f, 41.73437398797774f, 78.33080257497586f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.82973779 63.52410927 -0.25507371 {Pose: {Head: [86.6040393622381f, 0.0021551828461723326f, 0.5652973418009947f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.16347628 64.98632989 0.74703787 {Pose: {Head: [-137.3419114495339f, -29.292038199273534f, 5.923729620423635f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.18602985 64.07379869 0.80752448 {Pose: {Head: [-90.42022474926253f, -5.133978509464987f, 0.2264992119658332f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.47330060 65.58366535 2.21486320 {Pose: {Head: [-88.93300278993885f, 1.3256619435274934f, 0.288294052892609f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.61629714 65.00937128 0.69717649 {Pose: {Head: [-138.2025545652309f, 14.432947675772258f, -10.523251952808849f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.93120075 64.19786880 0.75794509 {Pose: {Head: [-96.00654486482247f, -10.568754543747618f, 1.5265238503072516f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.42425075 65.58612007 3.05760756 {Pose: {Head: [-88.3637258677309f, -1.5238827816982594f, -2.7718740953505536f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.21689510 65.57700484 2.58255364 {Pose: {Head: [-90.78425402376182f, -4.319834172151841f, 1.1533460176480936f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.22517495 65.85034313 2.99294301 {Pose: {Head: [-100.18570826904234f, 55.37984246580295f, 11.06631423784853f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.36200662 65.70081041 1.76534998 {Pose: {Head: [-97.65791393984476f, -25.10244409733418f, -2.5387566366473413f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.55742324 65.71567921 2.91767056 {Pose: {Head: [-93.73937286397536f, 20.724754541268705f, 14.640296236422028f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.47445364 65.56441181 1.94531041 {Pose: {Head: [-89.3984273222279f, 36.461467460721266f, -0.26937848190610336f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.10735245 64.11681959 0.59267284 {Pose: {Head: [-91.6612842144279f, -27.945937912607214f, 0.9482545041417861f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.20390239 64.97561786 0.78507251 {Pose: {Head: [-135.1672666400249f, 0.25211721356464584f, -0.29403674714297073f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.40535782 65.31781328 1.05376162 {Pose: {Head: [-140.39731444403708f, 4.433642939406042f, 0.14714848601317654f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.17009043 64.55386054 0.12555455 {Pose: {Head: [177.0740123563837f, -10.848635459849822f, -0.03286274634903316f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.11267392 65.63789399 3.12181027 {Pose: {Head: [-91.06359115429066f, 4.586122959616211f, 5.567741501846973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.33291840 64.09816563 0.63740644 {Pose: {Head: [-91.99389266812105f, -11.258680300621279f, -3.755083595032446f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.35474877 65.63770663 1.93296532 {Pose: {Head: [-95.06349045619382f, 2.681609851767316f, 0.5098337928647454f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.41826714 65.57908943 1.50152282 {Pose: {Head: [-126.6448624075688f, 0.8743486431626165f, -1.08119391949216f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.38468349 65.57528308 1.37039074 {Pose: {Head: [-137.25613334692284f, 8.036247657584637f, -8.83819603258911f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.49972907 65.61151393 2.66210796 {Pose: {Head: [-91.74756944721646f, 8.92743265019966f, -0.5053374232165647f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.42114601 65.70958420 1.97531411 {Pose: {Head: [-94.27549188757881f, 7.382273196678043f, 7.168420560934403f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.12914516 64.24319104 0.52373619 {Pose: {Head: [-99.27472823438974f, -19.636312937481513f, 1.4811459240423228f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.01185710 65.60713906 3.10459212 {Pose: {Head: [-92.53033847205428f, 18.31547194366347f, -1.021932881115228f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.98342522 65.56070182 1.48161672 {Pose: {Head: [-125.39521216551519f, 12.088543668141286f, -10.978305028323229f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.06922792 65.50897609 1.48254510 {Pose: {Head: [-126.10726366328333f, -34.917099232166265f, 28.453427287649713f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.77692672 63.44679243 0.23222953 {Pose: {Head: [88.18435859281207f, 84.68663259780834f, 60.00208694389665f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.34264509 65.32235122 1.01847560 {Pose: {Head: [-140.69586579364147f, 2.3999773694380115f, 1.0571896739769895f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.99766193 65.31895820 1.05164472 {Pose: {Head: [-140.1725638573832f, 8.551745749664343f, -1.0138595316300016f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.70532628 65.57423850 2.59043309 {Pose: {Head: [-90.29594939982663f, 2.1204448020185627f, -0.31824090582373477f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.23379556 65.53733264 1.20066792 {Pose: {Head: [-139.37945782459124f, 18.324189910656433f, -16.162053075105298f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.29516728 64.68827493 0.10404615 {Pose: {Head: [-179.13994628919627f, -11.647694767210957f, 3.4215633586031533f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.68640296 65.74577151 3.14594658 {Pose: {Head: [-92.62785829255444f, 24.70732539282505f, 13.775669368900731f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.54296093 65.79857819 2.26891007 {Pose: {Head: [-96.64453975151275f, -7.884127633876978f, 3.358457319642326f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.37495646 65.66959084 2.61723417 {Pose: {Head: [-95.75644523510931f, -10.477144246980673f, 3.763768181357829f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.61027272 64.77204699 0.70386227 {Pose: {Head: [-128.10313483128883f, -15.054499135992092f, 15.84458642720572f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.88525547 65.56782918 2.10869592 {Pose: {Head: [-90.31281522866593f, 16.867151179729703f, -1.1258221535174233f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.42365303 64.18312397 0.67896606 {Pose: {Head: [-95.3296477949115f, -10.875503690186722f, -0.9814472900357049f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.92013230 64.46278275 0.49477047 {Pose: {Head: [-117.12250983572476f, -15.802560772426464f, -1.567161064027469f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.62659859 64.21523983 -0.09862791 {Pose: {Head: [98.16034528776203f, 7.811690736083361f, -10.548737493911524f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.53180438 65.72847240 2.62318104 {Pose: {Head: [-92.10578212908884f, -49.00698028140948f, -4.6544613827896075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.72581781 63.51453668 -0.40471262 {Pose: {Head: [87.41845454186998f, 21.882964349992633f, -0.6716222727657505f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.91381382 65.53896993 3.40813892 {Pose: {Head: [-83.09763942407339f, -3.9387999443837973f, -3.333538130565263f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.24136335 64.19950576 0.55788858 {Pose: {Head: [-97.15655437959968f, -30.17555763011164f, 3.63055076621532f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.64701317 65.61753256 3.32196750 {Pose: {Head: [-93.00190590455061f, 2.425395984136978f, 1.5003547376171096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.11833803 64.05327353 0.31800619 {Pose: {Head: [-89.5035717032524f, -96.97572215746436f, 52.07391864252392f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.21360471 65.70079961 1.78063196 {Pose: {Head: [-104.9266277355338f, 20.819067452280123f, -12.079860497724491f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.73336597 65.77015185 2.72742428 {Pose: {Head: [-97.11572565885923f, -8.73939189992378f, -14.394258180008142f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.48164742 65.57593792 2.58442722 {Pose: {Head: [-90.30553446571433f, 19.729163146338095f, 0.31242009686182637f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.75449072 65.68216312 3.17164116 {Pose: {Head: [-90.60721663690919f, 15.73257781518926f, 13.70696632261328f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.36658100 65.56572027 3.03055468 {Pose: {Head: [-89.5941214564479f, 0.4300240354461469f, -0.6227577348843062f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand -0.07328543 65.57862249 2.99292384 {Pose: {Head: [-86.24934920171557f, 33.935579475030664f, -3.659627204185249f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.34102332 65.36495838 0.81801763 {Pose: {Head: [-163.39356339014324f, 9.534803360384489f, 0.04341453570856451f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.52535422 65.22232990 0.78708080 {Pose: {Head: [-147.0176779799795f, 3.1324453844294635f, 10.161760169380631f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.85657132 65.61002132 2.39359965 {Pose: {Head: [-91.79810735296513f, -18.901790568066048f, 0.9916996721929351f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.76620961 64.09859338 0.70553167 {Pose: {Head: [-91.72888286456003f, -6.572697254415894f, 0.22807365635221763f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.21543607 65.61678776 2.09901284 {Pose: {Head: [-92.6447223865483f, -34.54662769840789f, -0.10108165837941303f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.99431803 65.07972283 0.83034150 {Pose: {Head: [-137.06364008262807f, 14.078732474243767f, -13.768269448881119f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.99711242 65.57282209 2.88263973 {Pose: {Head: [-84.38476508693238f, 14.206537731593908f, -1.8951967711866688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.84477561 65.60137426 1.24358175 {Pose: {Head: [-146.70666082679261f, 20.981720876495082f, -2.984401567911125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.63761030 64.54138387 0.03184002 {Pose: {Head: [-179.99241150394826f, -2.799508777243596f, 52.14739725210168f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.24529525 65.67896452 2.50549815 {Pose: {Head: [-94.07376277858579f, 8.811301279530955f, 1.2811819474311532f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.47238392 64.77492503 0.28751852 {Pose: {Head: [-160.0513554652899f, -7.201247967089955f, -12.386419687181291f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.42370634 65.65796374 3.09528430 {Pose: {Head: [-86.13087185546048f, 27.329453280709373f, 4.726855457768701f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.06042456 64.68889658 0.13476965 {Pose: {Head: [-178.6760617272524f, -15.509078767696217f, 4.961172104491071f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.99650653 64.16688315 0.38086941 {Pose: {Head: [-95.48960769348498f, -50.8112365800838f, 5.19824091862865f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.14123621 65.70730805 2.49720086 {Pose: {Head: [-93.77540080135489f, 5.73168804889418f, 2.124783240701066f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.39496890 65.74383651 2.98502290 {Pose: {Head: [-94.57508000325866f, -3.8860953560865643f, 2.8237512474444513f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.98297630 65.05632408 1.12219758 {Pose: {Head: [-125.6826184907407f, -37.2194251116875f, 49.65020063342881f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.58290226 65.68794078 3.18721298 {Pose: {Head: [-93.35530719252851f, -18.214305170261582f, 3.368765368860952f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.59770271 64.69250783 0.33892253 {Pose: {Head: [-140.67791933499618f, -13.888685408629028f, 10.164070341147625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.81101488 64.08103368 0.26362335 {Pose: {Head: [-98.0650613548338f, 60.95193772343094f, -33.03801431358881f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.03618958 64.45105448 0.70376807 {Pose: {Head: [-113.21222840517481f, 66.69178141856f, -46.17845861779949f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.95476511 65.74574270 3.07316624 {Pose: {Head: [-94.82617823047866f, 19.438271122876436f, 1.1102501258981863f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.05491097 65.74334491 2.88323614 {Pose: {Head: [-92.41467613112769f, 19.14464853256896f, 2.149760901607304f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.27267086 65.57438465 1.13668318 {Pose: {Head: [-146.00770316062003f, 22.400340413177883f, -35.69642523359701f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.50923020 65.84095860 1.36761281 {Pose: {Head: [-125.78110694635775f, 72.58444886339359f, -4.525851349003086f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.23501829 64.61152385 0.70877823 {Pose: {Head: [-122.85031590747127f, 52.70407237489178f, -40.81180082762593f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.53290219 65.71214355 3.12709606 {Pose: {Head: [-89.34185398794837f, -27.151949351315356f, -4.644362711898621f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.30088753 65.69242129 1.83338230 {Pose: {Head: [-94.88692763516269f, -2.0462784535222647f, 5.664726060382332f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.39112630 65.60037556 2.36917185 {Pose: {Head: [-88.22426774139035f, -3.903344020144834f, 1.5452983165109377f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.21832010 65.64535803 2.40830006 {Pose: {Head: [-91.32712553858383f, -9.242210050268831f, -11.25603018497898f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.81819651 65.56953564 3.18382915 {Pose: {Head: [-90.37529966244146f, -7.431431216174817f, 0.3598482886649004f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.52959893 65.66299389 1.99903132 {Pose: {Head: [-94.94169442199164f, 5.074466874239253f, 3.0826039457569387f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.11460869 64.30374388 0.53379043 {Pose: {Head: [-99.69068246778151f, -11.225007229228304f, 0.12710546065506265f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.50824522 65.68107857 3.23345816 {Pose: {Head: [-94.6459850892571f, 30.620018462893526f, 3.7346460912361104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.01909049 65.66687498 2.57709426 {Pose: {Head: [-97.15332252289431f, 19.78835427772802f, 0.3204677447938814f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.76077440 65.57862477 2.28873625 {Pose: {Head: [-85.5014203094856f, -23.87156785729085f, 4.101288572324317f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.23012925 64.52643223 0.43121846 {Pose: {Head: [-119.35853048662263f, 13.495331760553604f, -17.079774232879075f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.40631046 64.24316737 0.42979482 {Pose: {Head: [-93.24342342483256f, -50.92632536112336f, -6.3693953704134385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand -0.29021383 65.53182688 1.90254547 {Pose: {Head: [-91.32738450145577f, 46.142540280609744f, -19.42057147904997f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.01755915 64.37763787 0.35049947 {Pose: {Head: [-106.81092372959849f, -45.1457541195617f, -4.158649479342299f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.79145435 65.62359991 2.89292649 {Pose: {Head: [-94.28294303090165f, 35.96463102727405f, 0.7505422503414838f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.77063803 65.66457989 2.54707864 {Pose: {Head: [-93.73916866232202f, 1.723205378046254f, -5.466856739783098f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.92614539 64.00314274 0.33549730 {Pose: {Head: [-107.63577537095951f, -77.23620751193789f, 49.045459942004264f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.66632217 64.66159197 0.46531410 {Pose: {Head: [-131.62984784438916f, 10.791777076247916f, -13.600262683203795f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.74732354 65.00802774 0.79588947 {Pose: {Head: [-129.83914515978796f, 44.37113629134557f, -15.994621062994655f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.20358474 65.62544105 2.77571847 {Pose: {Head: [-94.91035655076433f, 24.207740812900575f, -1.2423346633798173f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.92157011 64.14378389 0.81151215 {Pose: {Head: [-94.51560756464416f, -0.11139708134808671f, 0.2463985368819825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.20350114 65.58703487 3.26520817 {Pose: {Head: [-92.34448282210633f, 2.291538650983803f, -0.31347043618840337f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.04988231 63.63716389 -0.49567975 {Pose: {Head: [94.65848314313617f, -5.265275514941952f, 1.1459039499654007f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.44976688 64.67330251 0.23792331 {Pose: {Head: [-168.31372159084782f, -2.719654837397166f, -38.46145098519739f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.29087026 65.65644489 3.18989472 {Pose: {Head: [-90.07252992784296f, -1.1431440517513907f, 5.090994856188258f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.13590960 64.29184149 0.60247148 {Pose: {Head: [58.777217131826745f, -11.920810044923838f, -8.603790689794407f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.69129432 65.70643635 2.29125742 {Pose: {Head: [-92.9592260779499f, -5.536426049253424f, 8.009721985503523f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.31880029 65.65004036 1.96743933 {Pose: {Head: [-93.83254455436847f, -4.750555586277962f, -10.225083940702753f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.65813049 65.61189966 1.93817003 {Pose: {Head: [-95.31559311821643f, -11.774754468965412f, 1.1409690928973677f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.20518165 65.64089096 2.61139050 {Pose: {Head: [-95.2050025466964f, 21.815993731675224f, -1.2815910677907276f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.60810451 65.64613871 2.78584793 {Pose: {Head: [-94.45181378325994f, 22.084759604684127f, -0.6691373070525556f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.15306411 65.67633471 1.81535882 {Pose: {Head: [-95.06037963858093f, -15.053938886243994f, 3.3880712317264208f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.01326881 64.28084603 0.55802454 {Pose: {Head: [-99.84897795437485f, -8.02198236439349f, -0.718157701152769f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.80623419 65.72751110 2.70250174 {Pose: {Head: [-93.4631974482403f, 4.514833772844285f, -14.956616979272086f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.50813642 65.71725187 2.37475681 {Pose: {Head: [-92.76062460731316f, 1.7198712127876348f, 3.059028104699926f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.32813874 65.62436776 3.17721031 {Pose: {Head: [-89.54817383390483f, -9.292120131442738f, 5.9505124862286545f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.09411231 65.67008132 1.98310482 {Pose: {Head: [-95.58794697235686f, -16.335010585394095f, -0.6892645502755352f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.52364262 65.19144552 0.97600348 {Pose: {Head: [-126.62577088685791f, -4.297299835676179f, 2.246667444476913f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.92824887 65.80006682 2.58615144 {Pose: {Head: [-98.2849919271003f, 4.63581230455815f, 12.464349024877604f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.70313334 64.65012888 0.25137705 {Pose: {Head: [-138.7077758508421f, -14.163253474934134f, 17.757891873681825f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.29430947 65.68362214 3.15853744 {Pose: {Head: [-90.20227632071067f, -2.840918748188489f, 4.952915183814358f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.94354365 65.63691804 1.37781096 {Pose: {Head: [-133.6846209437032f, -12.555813473395698f, 9.925137274636667f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.46497910 65.70943622 2.51436039 {Pose: {Head: [-91.60416612595816f, -13.263615784378342f, -1.6152258580242007f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.87662124 64.41352988 0.75344752 {Pose: {Head: [-100.53706727689679f, 65.92151119179135f, -46.120509524065554f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.18226887 65.73674592 2.78207484 {Pose: {Head: [-87.73766864566105f, 11.506245147667181f, 1.5774820288393638f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.16949657 65.56133647 0.95254745 {Pose: {Head: [178.6016449014902f, 0.29374275510718484f, -0.014344191956240971f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.31289135 64.79727139 0.06159554 {Pose: {Head: [-162.57263969621346f, -5.766051486874251f, 3.315661328802662f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.93782338 64.92310186 2.68106194 {Pose: {Head: [0f, -91.9457717931034f, 90f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.87554790 64.83694548 0.50604044 {Pose: {Head: [-132.12735935056463f, 25.189867382583635f, 0.9430441979255836f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.75950992 65.72835912 2.00721180 {Pose: {Head: [-97.33653178142919f, -32.564195506445174f, -7.603999160104725f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.02938493 63.96205849 0.41763636 {Pose: {Head: [-107.30488751527949f, 51.41812671951531f, -70.94213197891088f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.14141813 65.77404558 1.94007547 {Pose: {Head: [-97.2645855968942f, -35.72242617669949f, -1.534516938782331f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.52830066 64.68372106 0.27444840 {Pose: {Head: [-141.35794341130327f, -3.7285412522015684f, -2.7030467710423087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.21899386 65.57722647 2.96973761 {Pose: {Head: [-86.23295926937665f, 30.27014223822048f, -3.7036113986309385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.29524448 65.70996887 2.71393076 {Pose: {Head: [-87.66038948339225f, 7.8789688512688f, 1.4862272056787396f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.68083472 65.42776915 3.56114264 {Pose: {Head: [-67.5944861701164f, -13.012076886749664f, -0.28902222092838303f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.17637270 64.75925704 0.33427306 {Pose: {Head: [-141.25103825188359f, -1.2689980634635418f, -5.100999700777692f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.38510908 65.26950509 1.17375015 {Pose: {Head: [-126.62283840994624f, 4.589684554770606f, -4.343116693902595f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.15155419 65.21558688 0.85948840 {Pose: {Head: [-137.12933628695401f, -5.835044961429965f, 7.41206081503824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.78716527 65.62175992 2.52364365 {Pose: {Head: [-88.79655494473776f, 2.786638868729924f, 4.948856718215709f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.51437433 65.76202795 1.94396655 {Pose: {Head: [-96.68635059203885f, -7.154756736417164f, 8.418441360814054f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.66656757 65.67964088 2.22908611 {Pose: {Head: [-94.6015069083206f, -9.556091541412165f, -9.84600397035145f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.36412691 65.24422995 1.10007238 {Pose: {Head: [-126.4780924353724f, 6.697759505433535f, -5.868285603165778f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.68758890 65.74138391 2.39335510 {Pose: {Head: [-94.35849976675173f, -28.458380791872866f, -10.98798103329886f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 2.98937502 65.65613738 2.25856884 {Pose: {Head: [-96.2261935936012f, 4.957111587657006f, 9.026096650611096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.12018773 65.69029220 2.93866364 {Pose: {Head: [-85.95850754324113f, 22.944592420788805f, -2.5346972190268278f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.51885430 65.02895440 0.81937994 {Pose: {Head: [-117.78004835679756f, -3.574331992383579f, -4.2803783908868684f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 0.60142648 65.80305134 2.18417886 {Pose: {Head: [-97.28309712348984f, 22.428946618694933f, 12.079814366315471f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand 1.78890713 65.27532083 1.03097198 {Pose: {Head: [-133.76038543964523f, 20.313410839555647f, -19.624811413895895f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}
summon armor_stand -0.09973519 65.60736561 2.09976374 {Pose: {Head: [-93.51717288434057f, 11.740792920925706f, -1.4053614566890937f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"glass_pane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Small: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



