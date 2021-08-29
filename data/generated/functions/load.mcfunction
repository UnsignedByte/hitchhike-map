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
summon armor_stand 2.45167249 -3927.36998131 1.87426914 {Pose: {Head: [-89.99999999986589f, -8.751535268581636e-13f, 1.5129999459501153e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.52955112 -3927.33091881 2.16505919 {Pose: {Head: [-89.99999999988351f, -8.387762166956428e-13f, 1.875519281821082e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68662895 -3927.29185631 3.06491045 {Pose: {Head: [-90.00000000003536f, -2.822983190059798e-13f, -1.182730117264864e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.52495531 -3927.25279381 2.59319236 {Pose: {Head: [-90.0000000000316f, -2.4410041531924764e-13f, 7.942865613113357e-13f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.59627502 -3927.21373131 2.55218045 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.18454975 -3927.17466881 1.37209790 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.97386320 -3927.13560631 2.10938131 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.03868570 -3927.09654381 1.41722203 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.88870287 -3927.05748131 2.79490256 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.55607530 -3927.01841881 3.23128456 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.19400357 -3926.97935631 3.32787901 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.58353436 -3926.94029381 1.25876271 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.64518477 -3926.90123131 2.29177073 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.26117861 -3926.86216881 2.36491167 {Pose: {Head: [-89.99999999999895f, -3.065624676999592e-13f, 1.1240233219216508e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.63958715 -3926.82310631 2.58182705 {Pose: {Head: [-89.99999999999999f, -3.0624098378233517e-13f, 1.228408046232816e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.98062856 -3926.78404381 2.24031576 {Pose: {Head: [-89.99999999963575f, -3.235755638259468e-11f, -4.2426134842581616e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.63747339 -3926.74498131 1.96012352 {Pose: {Head: [-90.0000000069038f, 6.78778875334233e-11f, 2.2943954649638707e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.21295631 -3926.70591881 1.34613592 {Pose: {Head: [-90.0000000034912f, 2.0084508343553447e-10f, 1.4812874426495128e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.92281507 -3926.66685631 2.14049025 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.59425350 -3926.62779381 1.34441365 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.43086794 -3926.58873131 2.54824724 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.19961095 -3926.54966881 3.29178730 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.10566998 -3926.51060631 1.78895831 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.95472100 -3926.47154381 2.80027113 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.39631122 -3926.43248131 1.77042121 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.34286228 -3926.39341881 2.41149860 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.67372121 -3926.35435631 2.98486965 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.56931868 -3926.31529381 2.44988227 {Pose: {Head: [-90.00000000252632f, -3.3567732595042365e-12f, 5.519593636750286e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.43799271 -3926.27623131 2.44190973 {Pose: {Head: [-89.99999999773357f, 2.935078514644065e-12f, -2.712925620019887e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.90831330 -3926.23716881 3.40851865 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.82119040 -3926.19810631 2.21581684 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.33151511 -3926.15904381 1.17319493 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.46541954 -3926.11998131 3.04349105 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40300031 -3926.08091881 2.08898907 {Pose: {Head: [-90.00000000191679f, 4.8378435746006736e-11f, 1.6789434173432645e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68262866 -3926.04185631 1.91636711 {Pose: {Head: [-90.00000000170864f, 4.070819777685441e-11f, 1.2742062582538806e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32131684 -3926.00279381 3.29443505 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.37720787 -3925.96373131 1.63511410 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65100680 -3925.92466881 1.59010436 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.22196860 -3925.88560631 3.17873892 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.57529407 -3925.84654381 1.35718230 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.80856133 -3925.80748131 1.96336900 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.20979439 -3925.76841881 1.08985669 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.81989181 -3925.72935631 1.99308518 {Pose: {Head: [-90.00000000003102f, 1.7982844977922042e-13f, 8.26685260693107e-13f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.07271304 -3925.69029381 1.54607059 {Pose: {Head: [-89.99999999999999f, 1.8071339155653728e-13f, 7.43821726135351e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.02034529 -3925.65123131 2.31171111 {Pose: {Head: [-90.00000000001037f, 1.0316776234120838e-13f, 1.6363159291839071e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.18861287 -3925.61216881 1.84757016 {Pose: {Head: [-89.99999999999999f, 1.031600093233836e-13f, 2.6795187701513875e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.96656600 -3925.57310631 1.47197368 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.12910138 -3925.53404381 3.42725083 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.91897976 -3925.49498131 1.94562523 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.57926896 -3925.45591881 3.08144537 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.08648027 -3925.41685631 2.89682171 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.69341094 -3925.37779381 1.67498081 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.63390232 -3925.33873131 2.05658381 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.05109238 -3925.29966881 1.36244988 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.48151728 -3925.26060631 2.40822343 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44599542 -3925.22154381 1.53123181 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.59511874 -3925.18248131 2.45751420 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.81119468 -3925.14341881 3.16780337 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.57712240 -3925.10435631 1.19578150 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.47472525 -3925.06529381 1.22718100 {Pose: {Head: [-89.99999999756288f, -9.721270828729413e-11f, -1.2574890373522398e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.88433361 -3925.02623131 1.79773141 {Pose: {Head: [-90.00000000187967f, 7.002520218771857e-13f, -5.830993463042575e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.95178600 -3924.98716881 1.51404785 {Pose: {Head: [-90.00000000392569f, 2.0359211807374466e-11f, 4.070967875028193e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.67965821 -3924.94810631 1.25788000 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.19250561 -3924.90904381 2.69969660 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.49446735 -3924.86998131 1.29987701 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.17075118 -3924.83091881 2.10662363 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.72675190 -3924.79185631 1.45908827 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.62389807 -3924.75279381 1.64481119 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.68048760 -3924.71373131 1.76791955 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.82078805 -3924.67466881 2.47705096 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.73184815 -3924.63560631 1.77718804 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38990044 -3924.59654381 1.17284249 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.14017914 -3924.55748131 3.01564159 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.03198189 -3924.51841881 3.34228939 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.68284790 -3924.47935631 2.57433270 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.08726062 -3924.44029381 2.43829173 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.33480804 -3924.40123131 1.07911663 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.56419998 -3924.36216881 1.97654454 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.02363107 -3924.32310631 2.12978384 {Pose: {Head: [-89.99999999999999f, -4.7873827436126485e-14f, -5.958338184790317e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.44911693 -3924.28404381 2.02866135 {Pose: {Head: [-89.99999999999999f, -4.735996133631891e-14f, -5.532010788912121e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.15627718 -3924.24498131 2.68310497 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.93784420 -3924.20591881 1.58325243 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.83339544 -3924.16685631 1.69099905 {Pose: {Head: [-90.00000000016458f, 7.563185184693367e-14f, -6.163266869895738e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.52560822 -3924.12779381 1.10309692 {Pose: {Head: [-90.00000000005866f, -2.0913254174125387e-12f, -5.9446827961540105e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.31602755 -3924.08873131 1.69857181 {Pose: {Head: [-89.99999999990206f, -2.2915794210836523e-12f, -4.8313968335056114e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.21784095 -3924.04966881 1.46877111 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.46526250 -3924.01060631 2.92014042 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.96453362 -3923.97154381 2.75781187 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.89697234 -3923.93248131 3.25914396 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.94275718 -3923.89341881 3.25807526 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.49178119 -3923.85435631 3.18629578 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.75299352 -3923.81529381 2.08111317 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.53105843 -3923.77623131 1.18815803 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.65091494 -3923.73716881 3.07608692 {Pose: {Head: [-90.0000000000167f, -1.897036651856537e-13f, -7.57711402110356e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.19880440 -3923.69810631 2.58333690 {Pose: {Head: [-89.99999999999999f, -1.9441418682976696e-13f, -4.118266424815279e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.36774295 -3923.65904381 1.48164137 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.42353144 -3923.61998131 3.35948360 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.01423298 -3923.58091881 2.45101937 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.75672157 -3923.54185631 2.27350535 {Pose: {Head: [-89.99999999914472f, -7.638255460636111e-12f, -2.321992379565735e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.89639288 -3923.50279381 2.66439894 {Pose: {Head: [-89.99999999977558f, -1.46917613662153e-12f, 4.25408377560723e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.25219893 -3923.46373131 1.40098481 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.85277868 -3923.42466881 2.05655355 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.90363394 -3923.38560631 2.94438206 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.38247391 -3923.34654381 3.29697795 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.25689861 -3923.30748131 2.65397526 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35889110 -3923.26841881 1.63321490 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.20974817 -3923.22935631 1.64701874 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.85139040 -3923.19029381 2.51535361 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.02413210 -3923.15123131 1.21900145 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.71143977 -3923.11216881 2.97990009 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.43422724 -3923.07310631 2.26970801 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.42206911 -3923.03404381 3.29711463 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.91775745 -3922.99498131 1.33102262 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.78815311 -3922.95591881 2.99173317 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.26953258 -3922.91685631 1.38455954 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.64192308 -3922.87779381 3.26110665 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34223613 -3922.83873131 1.96269650 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.01108222 -3922.79966881 1.32628612 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.85695998 -3922.76060631 1.69641307 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.54639268 -3922.72154381 2.66434786 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.33495961 -3922.68248131 3.37893697 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.16675872 -3922.64341881 2.63672278 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.65110240 -3922.60435631 1.78116416 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.77838259 -3922.56529381 1.27749973 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.97620921 -3922.52623131 2.77057129 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.10968575 -3922.48716881 1.94700535 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.19206068 -3922.44810631 3.23984408 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.70307585 -3922.40904381 2.48734017 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.95514761 -3922.36998131 3.22432113 {Pose: {Head: [-89.99999999999999f, -7.404056582361426e-15f, -1.0208433891736409e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76366141 -3922.33091881 3.19642514 {Pose: {Head: [-89.99999999999999f, -7.348975033262574e-15f, -1.3029266404596573e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.66981787 -3922.29185631 1.59026822 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.50079488 -3922.25279381 3.08135561 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.48425014 -3922.21373131 3.21380599 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.69560688 -3922.17466881 1.92841625 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.28931461 -3922.13560631 2.96344655 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.92518272 -3922.09654381 3.38717421 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.10898383 -3922.05748131 2.12451455 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.24911926 -3922.01841881 2.04083930 {Pose: {Head: [-89.99999999987912f, 1.2436810290660346e-12f, -4.157725888206175e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.09705625 -3921.97935631 2.40872618 {Pose: {Head: [-89.99999999987241f, 1.2662199819981437e-12f, -9.60461549879984e-12f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.85729423 -3921.94029381 1.63924116 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40978274 -3921.90123131 3.25353302 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.28454964 -3921.86216881 1.41668430 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.46547577 -3921.82310631 1.08185355 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.30569143 -3921.78404381 2.20203773 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.30643249 -3921.74498131 1.17161567 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.36118663 -3921.70591881 1.35927349 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.39611899 -3921.66685631 2.51925586 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.00463511 -3921.62779381 1.77110831 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.92415400 -3921.58873131 1.82727406 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.31815730 -3921.54966881 2.69965348 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.46341328 -3921.51060631 1.18195804 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.10099303 -3921.47154381 2.01827849 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.39270830 -3921.43248131 2.15336982 {Pose: {Head: [-90.0000000000048f, -4.59640151466555e-16f, 2.574925916731457e-15f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.39217451 -3921.39341881 1.66753854 {Pose: {Head: [-89.99999999999999f, -2.244581570025467e-16f, -1.5127322031473787e-14f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.85991851 -3921.35435631 2.54092867 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.60936888 -3921.31529381 1.55738796 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.97404612 -3921.27623131 1.71603523 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.80833811 -3921.23716881 1.37320147 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31372906 -3921.19810631 2.98047936 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.15495365 -3921.15904381 2.58634946 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.09064323 -3921.11998131 1.62864620 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38337607 -3921.08091881 1.57922564 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.96752923 -3921.04185631 1.40623171 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.58726700 -3921.00279381 1.64695834 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.27443701 -3920.96373131 2.24975894 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.21681405 -3920.92466881 3.14871148 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.75017841 -3920.88560631 1.88475965 {Pose: {Head: [-90.000000002084f, -2.2054703078303296e-11f, -5.771101171467949e-10f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.47292155 -3920.84654381 1.82983267 {Pose: {Head: [-89.99999999949375f, -1.477987946003357e-11f, -3.441343006986983e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47609168 -3920.80748131 1.98618984 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35888204 -3920.76841881 3.24166559 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.61678038 -3920.72935631 2.82711235 {Pose: {Head: [-89.99999999999997f, 1.4404495818477765e-12f, -8.973219197366728e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.24575953 -3920.69029381 3.00294504 {Pose: {Head: [-89.99999999988933f, 1.4421918170792868e-12f, -3.75575722513484e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.59571100 -3920.65123131 2.14951917 {Pose: {Head: [-90.00000000005981f, 6.260929273227646e-13f, 1.4600355505959046e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.06448331 -3920.61216881 1.54349083 {Pose: {Head: [-90.00000000005306f, 6.92278253161358e-13f, 2.5892181039785303e-11f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.97372454 -3920.57310631 2.68614253 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.46307595 -3920.53404381 3.02160332 {Pose: {Head: [-89.999999997532f, 2.3773386257790443e-11f, -2.2860498101266978e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.31786119 -3920.49498131 3.27086973 {Pose: {Head: [-89.99999999884038f, 2.3812834646181365e-11f, 1.2238521585050648e-9f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.81229481 -3920.45591881 1.54279090 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.06536300 -3920.41685631 3.35791127 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.31323451 -3920.37779381 1.29600263 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.27443358 -3920.33873131 2.32921265 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.09309059 -3920.29966881 2.47144026 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.67965129 -3920.26060631 3.35978885 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.00834550 -3920.22154381 1.46999413 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.47047317 -3920.18248131 2.28800326 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.26799353 -3920.14341881 1.12909888 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.95045281 -3920.10435631 2.18868431 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.76306299 -3920.06529381 2.89456785 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.17466378 -3920.02623131 2.24422128 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.64315965 -3919.98716881 1.41252523 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.45928666 -3919.94810631 1.93370832 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.13477863 -3919.90904381 2.40447478 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.42464467 -3919.86998131 1.82069511 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.12373960 -3919.83091881 2.44928436 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.16797399 -3919.79185631 1.71368668 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.08748557 -3919.75279381 3.21701256 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.06534154 -3919.71373131 3.19856767 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.65542721 -3919.67466881 1.86489397 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.84837682 -3919.63560631 2.60212547 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.86456955 -3919.59654381 2.04313257 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:glass_pane", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



