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
summon armor_stand 1.4595474502866255 73.3125 1.1608501384527812 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9875426401845768 73.3515625 3.2023310979167183 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7356735746757725 73.390625 1.4487531605803776 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9237670276737352 73.4296875 2.4249403777762444 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6983384568357309 73.46875 2.0907824101049686 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1693737625323073 73.5078125 2.890186649507929 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.882112349054652 73.546875 1.608677489388907 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5381843960686314 73.5859375 3.2976786473668884 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2870215445423072 73.625 1.2524349786527298 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5513798201458567 73.6640625 1.4787960361124863 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.812062114181559 73.703125 3.4035094523268716 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1959450515902654 73.7421875 3.2930829095590397 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3972706642799955 73.78125 3.350785325989399 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8535603272082497 73.8203125 2.6465043446883563 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.534258450197474 73.859375 1.7236337307875953 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2495938248533225 73.8984375 3.038857243939456 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1764861446353188 73.9375 2.3794120978256235 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5870946738824723 73.9765625 3.1881652356274492 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7709925301004295 74.015625 2.0886279209858154 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.297141250650587 74.0546875 3.096330774388388 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.486646101916575 74.09375 2.9321943224272786 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7511914224062342 74.1328125 1.419270083092373 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9350345013339616 74.171875 2.409359642725506 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5244584454486936 74.2109375 2.490415449155191 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6077590556963011 74.25 2.847648482619222 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3801897721726455 74.2890625 2.1228351980904567 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8101479582398482 74.328125 3.0394224421719134 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6769571353146646 74.3671875 1.65335039891023 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5264521681127428 74.40625 2.533954591583059 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.553671579499358 74.4453125 2.6285719080719936 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1456008427054374 74.484375 1.3035895632560153 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7769035476348014 74.5234375 1.1559938504531195 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5909274041070023 74.5625 3.1286489121658128 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8351444814206834 74.6015625 1.8369004395635515 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9205368731090926 74.640625 2.0403744401774833 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6830537978888411 74.6796875 1.810310899445974 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3317460339832997 74.71875 3.355024032007548 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.354052988189872 74.7578125 2.1031676065549445 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.045056585986042 74.796875 2.2530461284726684 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.698321431782553 74.8359375 1.4073665122018748 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5486758185729659 74.875 1.2822103976554198 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9138404530929592 74.9140625 2.934399460884967 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.36644878276959864 74.953125 1.8999243761311568 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5809906982014146 74.9921875 3.1302348293799125 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7691615589438779 75.03125 1.5640867609382223 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.131202471783756 75.0703125 2.792258655149641 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.650544110036665 75.109375 1.5369443065719266 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3629073713056914 75.1484375 1.5857651324741018 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3864492536748434 75.1875 2.598169717119914 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.897344400218727 75.2265625 2.8017610457071567 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4571209990431269 75.265625 2.507235859748848 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9158531117688065 75.3046875 3.4331123282139324 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.661910935415219 75.34375 1.9415449584514264 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8709173727379516 75.3828125 3.1038875136097612 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3652500807584365 75.421875 3.17659743926106 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5144122557523578 75.4609375 2.2614203754086186 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0746054942277157 75.5 1.5701713887147166 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.45623187787276087 75.5390625 1.9340960272831227 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5217196362780047 75.578125 3.3597793519058725 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8776540664847562 75.6171875 1.384869382400061 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2541672282512266 75.65625 2.8071328030481655 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.217575761396912 75.6953125 3.251204716468499 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4350866223035063 75.734375 1.2448802557350396 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4201404823720939 75.7734375 2.7177587159481886 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3535550772402043 75.8125 1.8428765719298508 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0039478124702756 75.8515625 3.3223959655380844 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4721735865744954 75.890625 2.1334980470613885 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7229201227457058 75.9296875 2.61234858975015 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8514154896217097 75.96875 2.422867098139625 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.401868992061073 76.0078125 1.2711206981544612 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1078605793396505 76.046875 2.7760271425228984 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8827079174090913 76.0859375 1.3057867816061441 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.190999577724302 76.125 2.4367775069727595 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6075218904958635 76.1640625 1.5776512727556111 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4356966722420035 76.203125 2.1570330844168666 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1305974312131473 76.2421875 1.931576818109788 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.427823264200746 76.28125 1.2736426922811677 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3963629081742694 76.3203125 1.3502780948355135 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.953123329821738 76.359375 2.305248514491446 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4950107516446243 76.3984375 1.7313209863223895 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.317018973369508 76.4375 2.7036086295251316 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7445472416734024 76.4765625 2.9708303857203964 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0079219237520514 76.515625 3.1559322781614014 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7727889223112088 76.5546875 1.5817315078395011 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1818518753024418 76.59375 1.2486331848858925 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5111938424105578 76.6328125 2.8900556416428755 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3393767774305547 76.671875 1.883636281553469 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1815674616869485 76.7109375 1.3815049943276683 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3745298157143704 76.75 2.5116473052709125 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2533805096241775 76.7890625 1.3313809481103733 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6640056413868594 76.828125 2.8523455636317268 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6664482905261875 76.8671875 3.3692608187206767 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3690340995327508 76.90625 3.219924313101093 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.320096266232992 76.9453125 3.444772598470424 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.234139399428875 76.984375 1.4943715885961102 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3240447737985088 77.0234375 2.6644282193992614 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1570256846417806 77.0625 2.541233885863144 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0723132634668096 77.1015625 2.2471169009570064 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1976504416422042 77.140625 3.2403001548584776 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0268632780161893 77.1796875 1.7616375177392254 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8629608599733348 77.21875 1.1361762500975843 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6366515804377497 77.2578125 2.087676689254641 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7132401383590914 77.296875 3.3391938184070686 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.481731727241143 77.3359375 2.9002262569728456 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.348223413957491 77.375 3.3069698597246666 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8870831481761847 77.4140625 2.926230093352525 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7351001202906449 77.453125 1.0863463292434816 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4306530189525435 77.4921875 2.5648554218620663 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6622961133319754 77.53125 1.5986651791400006 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.837809462418863 77.5703125 1.9193055539201926 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0023545984799727 77.609375 2.0783303259398007 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5652390710956405 77.6484375 2.6138644267787603 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.581859467476481 77.6875 2.320806061112708 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3612885752945205 77.7265625 2.1677987247600488 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3482808077663282 77.765625 2.7797831569702947 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1544840293259238 77.8046875 1.3707738221490993 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38002984728689954 77.84375 1.561786458356635 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6133039069350615 77.8828125 1.9435791686858306 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5305145799956159 77.921875 2.3076142626736713 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0663625226086006 77.9609375 2.4719096798547664 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7986743952816207 78 2.715606103108452 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.039678738757369 78.0390625 3.0743564752002466 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7029144453395126 78.078125 2.969048770479513 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4920547880468833 78.1171875 2.3131649881346017 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.513598811037835 78.15625 3.0400651777207797 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.152976586398339 78.1953125 1.561733818363551 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.542813828578375 78.234375 1.9843320455965756 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.47433325648037616 78.2734375 2.140764826296502 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8679999811443091 78.3125 2.9854495172852746 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.41410204359164 78.3515625 2.3329501337135836 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7213947715844093 78.390625 1.1474087290190145 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8013551640113943 78.4296875 2.84542747342919 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.44961559612595453 78.46875 2.6838252492317025 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8613920127845909 78.5078125 1.950718103892108 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7544820905070457 78.546875 1.718276269457538 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.600093314339792 78.5859375 2.5885608910884956 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5099707810256726 78.625 3.0106963263956694 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5200607960358143 78.6640625 2.5431351696923885 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1790836286996846 78.703125 2.9081543151559295 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8498478970647592 78.7421875 2.5439225417757676 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3874740303676266 78.78125 3.133796572338191 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3107692909887376 78.8203125 2.8271981470713303 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8265169847416616 78.859375 2.348381352766923 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.533933096484779 78.8984375 1.23417856701176 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.416072418647213 78.9375 2.922550685320621 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0327537895050414 78.9765625 1.9187654608509754 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1298441561811159 79.015625 3.245745761133412 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9873392673210191 79.0546875 2.2938752921836425 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3795167298981124 79.09375 2.2784102427734174 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7788703510537816 79.1328125 2.9293075698545703 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8484620912801564 79.171875 1.447931806816006 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5782849550313904 79.2109375 2.4729372816550486 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2994064083720476 79.25 1.4641162385117172 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.462135718191025 79.2890625 1.2418978236699185 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0020768376368847 79.328125 2.7536518749633965 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.311881721173062 79.3671875 1.5966864269223588 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5657611598784515 79.40625 2.43732079664062 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.167329957300569 79.4453125 2.5825641859053405 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9032108985852765 79.484375 2.7255869069105487 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3463957729087752 79.5234375 1.472753597019771 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0135563318897 79.5625 1.2088452888206083 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.480550014634239 79.6015625 3.336439275550995 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9519044945566337 79.640625 1.5790456835966027 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5953849452810758 79.6796875 2.8813345705771516 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1761566061904491 79.71875 2.2973449453765156 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.576309805473578 79.7578125 2.4923562534819874 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.170661429869282 79.796875 1.2742529961563496 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3253974220817707 79.8359375 1.6905903661471982 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3704391522067605 79.875 2.661699684142867 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.34798789370204986 79.9140625 2.7978260359830123 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6736543597546955 79.953125 3.2327602382357905 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3784541671601236 79.9921875 3.236201139054984 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3488032900806854 80.03125 1.2914854339726485 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9077112550648142 80.0703125 2.0752297786781475 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5291753619762868 80.109375 3.0865056605309684 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6789293835946584 80.1484375 3.266654857896373 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8664564099242202 80.1875 3.1356029758942108 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9880701044043547 80.2265625 2.709713858037103 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6498345732021984 80.265625 1.1918280850727334 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0629908533847034 80.3046875 2.090957388522984 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4089914652278717 80.34375 3.000059047394709 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3491583649588494 80.3828125 2.1720312370532757 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.5883864248420014 80.421875 2.68227347727771 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.447820680824214 80.4609375 3.1139197917835766 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3354020891895219 80.5 2.776281392508218 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.449258243735368 80.5390625 1.5260167909416302 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3646593808723347 80.578125 2.469104492656128 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9053495798600589 80.6171875 3.0711026486054624 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5125087321759878 80.65625 2.7290264743155737 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1764391695777137 80.6953125 2.0836666114643783 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4502508441847447 80.734375 1.4668140710034054 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9280876007642693 80.7734375 1.7400180400081535 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5116059130742492 80.8125 1.4676389400327783 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7151039622037855 80.8515625 1.2878627513585195 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7911263871881558 80.890625 2.9010756205928017 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4019650952291105 80.9296875 2.5531529857870714 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7089644112087913 80.96875 1.5003202420506412 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9779530016969007 81.0078125 1.9820921931456736 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.106819455554776 81.046875 2.8236007526543343 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8536269020133516 81.0859375 1.727387291379321 {Pose: {Head: [-89.99999999999999f, 0f, 0f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



