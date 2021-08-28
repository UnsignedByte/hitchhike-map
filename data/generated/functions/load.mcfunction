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
summon armor_stand 1.7062252293208213 64.91277336211259 1.4754448062889445 {Pose: {Head: [-133.3039103352237f, -4.628327959539113f, -0.35646164873277014f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6137583665016824 64.8088407972411 1.4237457182814834 {Pose: {Head: [-134.73710884194776f, 0.491695874024655f, -1.709698253685609f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4788136445075127 64.37810077008331 0.9611526932913805 {Pose: {Head: [-134.9431453185453f, 1.545825383327498f, -4.899747736713755f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1951692984626145 65.90841050609956 2.4916549245919306 {Pose: {Head: [-134.30277283013575f, 9.634426613982605f, -9.46136723143058f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3149698630511744 63.99958847812674 0.6365609553158518 {Pose: {Head: [-133.08369859468627f, -0.7060894851648489f, -0.6909535836509924f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4455450954498335 65.35862285585995 1.9301464407965359 {Pose: {Head: [-136.0083325333938f, 2.113851311361916f, -1.6124651414273303f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2440866973691014 66.10300311638976 2.63059379631067 {Pose: {Head: [-134.34152333112863f, 9.401700262446887f, -9.283712375798274f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8454782114832566 65.20234800777104 1.787603635736056 {Pose: {Head: [-134.7069013098025f, 11.598633706877274f, -12.376979388634293f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.316634742775534 64.23352923801116 0.32633942763118684 {Pose: {Head: [-152.82250669145458f, -1.5846365795876072f, -0.6608248295405644f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6631027956131879 64.18168143568718 0.777481546708016 {Pose: {Head: [-135.84286412987015f, -1.5061263888342635f, 0.7977013245474985f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3184637793214829 65.06121502442615 1.1848407308539106 {Pose: {Head: [-147.13725926483892f, -2.5150330788836808f, -0.9718075944750091f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4577548419540707 64.03313756181625 0.45177017788857343 {Pose: {Head: [-135.91786403746525f, -30.564459959339512f, 27.836909831584364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 3.0726826766778332 63.73200880013209 0.2691826809200841 {Pose: {Head: [-98.829761935388f, 81.57941722575617f, -45.01851296403016f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.30902597811905114 63.495835509039296 0.6829222771326954 {Pose: {Head: [46.02902944906317f, -0.9738881173941994f, -0.842527326408352f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31218779535548935 64.2800124774191 0.2724021221738965 {Pose: {Head: [-154.33210809230937f, 0.010639344820483626f, 0.001300621522030787f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6898745551195127 64.29363637748177 0.13060874046052545 {Pose: {Head: [-166.7815888532871f, -0.6158990677176124f, -0.11928835770038228f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.078961888478826 64.36722838194366 0.9537033623395041 {Pose: {Head: [-135.5576713210212f, 1.0519815739378797f, -2.0761377709394515f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1854243923098267 66.25989431782602 2.8445890391950135 {Pose: {Head: [-134.91895625643704f, -4.386293602050956f, 4.368773415830805f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6814470563803856 64.432927168979 1.0541645529169585 {Pose: {Head: [-134.17649157648006f, 1.441588432539884f, 1.3365927702308322f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9766583909583444 65.72698644212524 2.058472460383687 {Pose: {Head: [-143.22638803741162f, 11.67154548211225f, -12.298616104342484f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9807562053725003 64.21625059997294 0.651759310723137 {Pose: {Head: [-140.20731906742628f, -0.930727428512919f, -3.194297220966865f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5968811676642292 64.14148172962639 0.6793148401613587 {Pose: {Head: [-137.32488310492027f, -1.2901544556138749f, -2.4216002712627547f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.890055507215487 65.90343415790807 2.238646478611405 {Pose: {Head: [-144.1379343612411f, 3.029780810205188f, -0.6668133145912648f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32367224453046595 64.41534290806065 0.4858812186458145 {Pose: {Head: [-151.59680619109574f, -2.2610993309834346f, -1.256661973532385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.485670606403474 64.90581810328571 1.5055492696063717 {Pose: {Head: [-134.541028756387f, 2.193445137426164f, -1.6581417641720346f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32890042734686264 64.4575891117796 0.9899548181925837 {Pose: {Head: [-135.05065994538194f, -3.296130755747143f, -3.1406663837880027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.738188937532307 64.07147950114059 0.5809688752867839 {Pose: {Head: [-137.69943700479766f, -3.568421940848398f, 1.1133967185900302f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.598762953090618 65.40805665064643 1.8090486688388456 {Pose: {Head: [-140.66952769299039f, -2.647975078624308f, 1.8402486407490588f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6583013003069016 64.93218829133741 1.4712071769598536 {Pose: {Head: [-131.9443393023049f, -9.491867246010075f, 7.624138288342449f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0245075201642457 64.05916098292464 0.5599103290247773 {Pose: {Head: [-137.23121676337567f, -0.5655742693055985f, 2.201084865577104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7542938947629203 64.81531576023923 1.3071218154079949 {Pose: {Head: [-96.98736578074518f, 85.96135823145993f, -43.762373976224566f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.227690565319455 65.10200521252914 1.6415289722704838 {Pose: {Head: [-135.01460695571924f, -6.74835235137126f, 6.913769560101809f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6261071465889958 64.89519816620536 1.322071957615769 {Pose: {Head: [-104.62448831534611f, 77.11388629193559f, -42.34924963735182f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.17505411531329 64.14886510836762 0.30530098011027496 {Pose: {Head: [-151.59093883787702f, -0.7294815245072928f, -1.3876635834480773f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6122462409151515 64.31871688302923 0.9755301839108856 {Pose: {Head: [-127.31956210618719f, -0.18152514332015068f, -2.6569324741464255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.36455711483247594 64.48199615119957 0.9271168607449586 {Pose: {Head: [-136.23411358018424f, -11.806751057444663f, 3.366463252907492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9992592871532386 64.46472184432993 1.0715233312320411 {Pose: {Head: [-130.91948007559617f, -4.653484465769155f, -1.321084421198503f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9854528440823661 64.14544404290626 0.5013582535996308 {Pose: {Head: [-144.40205836541884f, -1.3559620007343076f, -3.525701177774842f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.732437928831376 65.79222708858688 2.375604992149089 {Pose: {Head: [-134.85399244024302f, 4.047635697031255f, -3.907348180948294f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4643480036679311 66.10673300223206 2.6397646294458332 {Pose: {Head: [-133.05118242050017f, -14.403553987588065f, 13.939684735941603f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6433913793567936 64.24016570695328 0.3172727243228933 {Pose: {Head: [-151.96159048130238f, 5.19757959157763f, -10.07648225309907f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.355608790759584 64.39234726068398 1.042145186947155 {Pose: {Head: [-125.57277604544555f, -2.902899403799402f, 1.550582219831475f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.17226554488404022 65.84361093600923 2.426721362827674 {Pose: {Head: [-131.66562274051998f, -20.36355917875416f, 19.672463600726836f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.048745103155963 64.49648548749086 1.031352068721253 {Pose: {Head: [-133.2317384324166f, -5.078592400403743f, -1.7174572387370408f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7319639432448486 65.44327534168751 1.9251103688392472 {Pose: {Head: [-134.62913387447833f, 20.76286197402966f, -16.099346978451663f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7539101631311914 64.69299165318728 1.2541041920336222 {Pose: {Head: [-124.95483596994058f, -17.67024136392555f, 12.579833199496724f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9850683474200251 64.13653156989069 0.47344648454230365 {Pose: {Head: [-143.21909376346719f, -1.4604874143481104f, -3.487702390676276f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3380857058045838 64.48576229423873 0.947911173951822 {Pose: {Head: [-137.24379117434648f, -4.627091848694337f, -4.381729845842077f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1072778766237457 65.35662512862301 1.7251394213560933 {Pose: {Head: [-110.35726507555074f, 65.77304779941832f, -43.374058703274095f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2556499070699445 64.81173564567733 1.3909039324641843 {Pose: {Head: [-135.4646484910008f, 1.6400998990148632f, -3.5886741438379333f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8870485453768198 64.5552162926324 0.9907782362925861 {Pose: {Head: [-135.3293136965464f, -12.297940893733406f, 5.244751105166012f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7116200178195715 65.12363984944876 1.647363729379197 {Pose: {Head: [-133.06210042121876f, -7.211359352411042f, -6.466566738003918f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.680259137042596 64.20987816238153 0.06425558040881865 {Pose: {Head: [-165.71544039756037f, 1.0657161392009515f, 0.5912812213308694f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8234632237357915 65.32771485205836 1.7628816438854749 {Pose: {Head: [-135.37316020650516f, 17.88154719320008f, -12.893796097916548f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7016541046707148 64.6648737904626 1.2200479853759665 {Pose: {Head: [-133.2465590932701f, -2.343696877636712f, -2.5263692669357316f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7151467981278896 64.23264398009721 0.5912258031123505 {Pose: {Head: [-131.64788639225804f, -32.72899058816264f, 24.627442329525206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.38836930176394113 64.54719092380738 0.9162380126832467 {Pose: {Head: [-136.69060147807986f, -0.405237748539428f, -4.905689676883657f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5938187746360521 64.24229085966519 0.24272703598459616 {Pose: {Head: [-155.7520607556524f, 0.3720840610020491f, -2.9968764943338986f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0268953342660738 64.31281920619757 0.31597142933552747 {Pose: {Head: [-152.60998927834086f, 6.976584619327633f, -8.528722446491198f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.324046060158528 64.86544109655368 1.4025571558741907 {Pose: {Head: [-135.82189579087304f, -3.0270525805400603f, 1.6257380724968713f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7090930929089474 64.67237718004752 0.7616138013032354 {Pose: {Head: [-149.6354224563404f, -3.815303016167744f, -2.6161310353223186f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.96198799251148 64.74871039746746 1.2133102086912921 {Pose: {Head: [-130.69978404857326f, 0.13840066369526016f, -1.342707448116259f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3107889183990273 64.89751193267169 1.387321181176445 {Pose: {Head: [-130.66704402777523f, -16.79001509478076f, 15.522411058336614f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5916006193576755 64.93586237533144 1.3531419294360796 {Pose: {Head: [-126.56637940268273f, -35.76668472935706f, 18.803014639632583f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6327349048535686 64.34498795126714 0.2782324116253433 {Pose: {Head: [-154.02796825187107f, 0.058547697909226024f, -1.0363587349942875f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.256173633396844 64.80027526896356 1.2290501325058873 {Pose: {Head: [-130.82666468576642f, 8.64853015269254f, -10.891470540061025f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1594363461122534 64.48770985695653 1.100372682274653 {Pose: {Head: [-126.3882197400402f, 4.552020284012872f, -3.5824600031493694f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6889212589871958 63.60396893669805 -0.07429540435591879 {Pose: {Head: [-98.51436423025511f, -79.02421989400015f, 74.44407912276283f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.646378993363128 64.65611008154224 1.1507173181231811 {Pose: {Head: [-133.48072333035353f, -4.977426608385283f, -0.7023124982240663f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3851350501750473 65.20891761256173 1.4259898115584746 {Pose: {Head: [-146.33060825937892f, 0.9064893741401825f, -3.7260106941261197f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3475455924056542 64.77197260497343 0.8510683315331762 {Pose: {Head: [-145.54393430337808f, -1.2179225402707763f, -2.534344644504087f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9556867117875618 64.62598703592084 0.788052272079415 {Pose: {Head: [-142.41561311963005f, 0.6571835675176756f, -0.7012974510958322f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0417750295269583 64.58804521967825 1.1730578637751041 {Pose: {Head: [-126.5623658472635f, 2.2971550809882504f, -1.914109294923588f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.861482112380029 65.26676879754434 1.6910931621392882 {Pose: {Head: [-133.26617524336223f, -17.154112054984523f, 2.2954481146546124f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2454377152572378 64.56837934859415 0.8653079396781337 {Pose: {Head: [-130.54163250509743f, -32.77460005312754f, 23.281947475215357f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0942985980410398 65.19372291848886 1.5167100391153057 {Pose: {Head: [-121.12506710056807f, 50.80388808182402f, -45.11646016771093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7015861282662845 64.64736711065763 0.7078131662680044 {Pose: {Head: [-149.97751713728155f, -2.5243916757242557f, -1.6019848056523431f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0057266542351995 64.63991814688485 0.7704136471327785 {Pose: {Head: [-141.61207267496687f, 1.0204556540181622f, -1.1581513233194805f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8309095702531398 64.88307870472094 1.2547878948775395 {Pose: {Head: [-125.67216907535133f, -31.528919560330777f, 24.707649875941886f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.596531971879483 64.8417948652013 1.1100136384956099 {Pose: {Head: [-140.9301883934161f, -7.390608296834334f, 1.7501440123345446f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6867899944400793 64.60266463085748 0.6281192807735796 {Pose: {Head: [-148.46703870366716f, -0.6381906926581844f, -0.18929114009293532f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7114804596305477 65.11139850620943 1.543871907237278 {Pose: {Head: [-134.5167442070622f, -3.7407431039184567f, -4.014564532753262f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.049041670235952 64.51754303537177 0.833162593677095 {Pose: {Head: [-138.5423934738743f, -4.611993489625979f, -1.7864942809438236f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6808422206781035 66.2805827785368 2.863809036969161 {Pose: {Head: [-134.18070298926503f, 10.001406899094745f, -9.809402223899424f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.022592834843421 64.71932459157195 0.74376234190627 {Pose: {Head: [-135.22985272164055f, 26.484372832820927f, -38.307024103640686f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6365701027760756 64.99981847460444 0.9391012264542297 {Pose: {Head: [-144.00874558010614f, 7.630159774416098f, -16.39168043108472f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.753128953537814 64.74396517122433 0.6833251255758401 {Pose: {Head: [-146.9715709030105f, 0.09635463960774954f, -4.092235472990367f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8007569355216725 65.14648703821155 1.1192660519704805 {Pose: {Head: [-146.55201816943682f, 11.055991123924088f, 5.712059299579159f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.39914104692120744 65.08835439038772 1.1834807167437835 {Pose: {Head: [-145.92858958533043f, -1.1477903725401446f, -5.4259140930247245f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.226989316747441 64.67999934296121 0.6373297375316345 {Pose: {Head: [-147.8662685839328f, -3.675934206837798f, -3.307119383090288f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9462194170410125 65.5606225333474 1.9325149766781742 {Pose: {Head: [-134.16310233881828f, -23.798160457564016f, 8.297521041830212f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.463583446493682 64.705152111525 0.739707644693836 {Pose: {Head: [-133.47328027154234f, 28.706815883470927f, -40.32599825093526f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.317793878855985 64.3275248410271 0.2390712231954497 {Pose: {Head: [-155.51588865273692f, 0.19528417783710836f, -3.552391236821404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.31204809540866874 65.12901521460189 0.6081170127257922 {Pose: {Head: [-154.93908764219978f, 0.5352195099124083f, 0.1077940975482959f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7718840839495895 64.57453627567416 0.7944302300854458 {Pose: {Head: [-138.8390684460472f, -14.749742841837842f, 10.572934128654278f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.680440363301571 64.26539430777464 0.10223792707121862 {Pose: {Head: [-166.5876826492889f, 0.9186618843026342f, 0.43168203409982053f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.416677248503773 65.25477805483455 1.267274674244507 {Pose: {Head: [-139.361730642174f, 4.553798777315162f, -3.5262949931740333f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.935531446606129 64.34751998816556 0.21781700408409416 {Pose: {Head: [-156.44849352766389f, -0.7202733343625414f, -9.071716985542576f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.123256777145557 64.78969193921094 0.8559296156795697 {Pose: {Head: [-144.7272868941347f, 0.40021019742518477f, -6.615345562821811f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0020952264366754 65.09464545192478 1.477800158052822 {Pose: {Head: [-132.96539131503278f, -23.246045939923935f, 7.780163657936001f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3975738628902448 64.92516812507603 0.6709739503747255 {Pose: {Head: [-151.53004712798253f, -0.03668166963402175f, 1.3576639331976288f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7071408515911797 64.75805745393517 0.7424108268966553 {Pose: {Head: [-138.17116483306614f, 1.3785495465871067f, -1.9284585875375129f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9280411555284027 64.31215680448543 0.22222850371593147 {Pose: {Head: [-157.08441378640265f, -0.0673365806293012f, -13.594126215282238f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.580362204602558 64.98876327131967 1.2573373142239799 {Pose: {Head: [-134.6683286188941f, -10.743274284585986f, 15.225918935986604f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5072703950316951 64.42140032159641 0.24488898090251862 {Pose: {Head: [-138.22291521076005f, -36.58075987810202f, 47.285567411509234f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3118785385234226 65.04557897751936 1.0401516520288547 {Pose: {Head: [-147.3249466645605f, -0.14930381681565263f, -0.08813493252887114f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6194840553938796 65.05277382854413 1.1778431511464766 {Pose: {Head: [-138.05975072040167f, 13.847680956293285f, -7.430742348720971f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.254290863968825 65.24955790160315 1.5859632742150516 {Pose: {Head: [-133.99349638404152f, -7.897614242213329f, 4.702648716215866f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6944626278774733 64.4938571434477 0.5986256963806873 {Pose: {Head: [-148.68406320382218f, -1.2114699134659441f, -0.7688842914626223f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6537879299962105 64.39687128426746 0.28353018575991706 {Pose: {Head: [-153.47900036447245f, 0.1018196712497126f, -1.2383193645966628f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4968680268553505 65.19191235774674 1.6555751259786398 {Pose: {Head: [-131.89306983283464f, 10.11874285409953f, -9.307592292611503f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3392268437448767 64.36899370686398 0.08072436945529997 {Pose: {Head: [-164.15798974939037f, -0.49433234310693974f, 11.195378441574178f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1614924697189122 65.35531584796776 1.6704968116517838 {Pose: {Head: [-131.29797646435236f, -17.692760454851516f, 20.619968747115824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5606617981515312 64.91634639368351 0.8383584138884567 {Pose: {Head: [-137.93441067819953f, 22.70492707039584f, -36.33674151252678f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7190205597252317 65.44148875716941 1.649406539991922 {Pose: {Head: [-131.09825127725122f, 1.511663739433331f, 1.5300796813345716f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.981480688870051 65.11420774614909 1.4604370338717334 {Pose: {Head: [-114.83600949260452f, 44.65233118445168f, -29.922097203326054f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.262189686758829 64.65044743634218 0.05662962076191963 {Pose: {Head: [-166.13083882971307f, -0.46966565581962166f, -25.549261346021535f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3340004500259346 64.49336854917776 0.29151096540541865 {Pose: {Head: [-153.21327372061083f, -0.13734428610229904f, -1.1965455859544385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4234859427763666 64.86953927068808 0.5751164360349612 {Pose: {Head: [-151.78736852274145f, -0.06663074851052861f, -3.7161829881975055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7549378493313958 65.30352995246234 1.4934545598805626 {Pose: {Head: [-144.6763479546457f, 3.1810460682881243f, -8.179047856199915f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3258460125323847 64.91799588518884 0.9181041228419576 {Pose: {Head: [-144.8300494284451f, -2.4543605055081805f, -1.7683723501506818f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5626766561394967 64.76458149961096 -0.21121848673397328 {Pose: {Head: [-179.26293382057517f, 0.7374500313190793f, -13.758569960346547f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8107958488922917 64.48534931269991 0.21444250072760102 {Pose: {Head: [-157.51533201578846f, -0.18347553724946572f, -11.768519761439627f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2056413914544442 65.09926281038324 0.5474223631839293 {Pose: {Head: [-152.72175275608984f, 6.7275895622925646f, -10.825256861200845f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4197064690742076 64.8511205722622 1.0648195958930267 {Pose: {Head: [-140.19815795098697f, -10.474705341716527f, 6.241169022236941f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.0823973037513004 65.29392011455073 1.2079795682587695 {Pose: {Head: [-138.99086575496057f, -5.21046886399738f, 6.607828900468739f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3335025266806337 65.27092407877029 1.092453419622441 {Pose: {Head: [-141.70151748749788f, -8.861934421266367f, -6.021865487300664f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.260687705325827 64.83465100434758 0.692841234412037 {Pose: {Head: [-147.64041840257022f, 1.47705938424856f, -17.85140655467809f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1930644653187774 64.86740436331226 0.739809560169937 {Pose: {Head: [-133.96939220551587f, -21.224470213452648f, 21.840417961518018f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.697638331029354 64.71709756873437 0.6429184832479458 {Pose: {Head: [-148.70386082616633f, -0.9654367074154793f, -1.0755499550143688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2971005361848064 65.53980967601335 1.625514893624549 {Pose: {Head: [-143.30438661060757f, 1.743208616502005f, 2.11775864748016f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.089983136010381 65.17578840618441 1.1795708063165125 {Pose: {Head: [-137.4061359150757f, 1.6016688281997724f, -2.5485127867290074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.0353124633592767 65.13817074021286 0.6310858267728825 {Pose: {Head: [-153.47810324295867f, 1.962417636684783f, -26.00187043160447f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.798906235176289 65.01866636076971 0.37102069603483384 {Pose: {Head: [-154.18301957010593f, 1.7015109402687107f, -7.375279217655371f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.663090666387776 64.33023380146655 0.14119201069727955 {Pose: {Head: [-168.6465649534658f, -1.5049498212562264f, 1.1893388086563423f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.40053912007629017 64.65118209374542 0.28105589572926587 {Pose: {Head: [-153.84037743859548f, -0.043094570406711656f, -3.4105291450656243f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.422311207431546 64.50472234969584 0.08027494597087702 {Pose: {Head: [-163.80960540714173f, -1.0244444988938994f, 14.503692447676055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.307857038878546 64.68860485177231 0.015143043591480387 {Pose: {Head: [-168.0171366762591f, -0.13947940110382312f, -28.54754973794929f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1711049469939154 64.65668591806916 0.7175818394782784 {Pose: {Head: [-144.2035387722383f, 3.951240026291418f, -11.041840009492999f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9286186598940573 64.87071426879059 0.6370491937796038 {Pose: {Head: [-147.62301408468701f, 5.050964994777331f, 28.538824816131054f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.2521602872270079 65.66748982703805 1.8396714401811332 {Pose: {Head: [-142.8387643837022f, -3.8686829958677995f, 6.043548279071541f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.32142751704177275 64.99914304169734 0.6646754565227221 {Pose: {Head: [-152.13133676135234f, 0.15095960906206676f, 0.31001610409331626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.676330464848302 65.08066722519825 1.281224657116626 {Pose: {Head: [-137.09161330063645f, 5.065487495286155f, -1.6222671663930979f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.3166003221926047 65.04348674602704 1.2155208536986113 {Pose: {Head: [-147.1929447066157f, -2.18807209310296f, -0.8526455664499305f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9472603739842371 64.91136179897222 0.6051482579571251 {Pose: {Head: [-149.45681495892907f, 9.028659762294463f, 22.90142093408457f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6934539205356942 64.64301339324655 0.2421327199779092 {Pose: {Head: [-124.1087993455061f, 50.93247265030773f, -57.67211494388801f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2069111317200618 65.16060482956556 0.5317900224661231 {Pose: {Head: [-153.82958288317073f, -0.11769722219644344f, 1.0274622462487346f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1969514084431152 65.43119493498014 1.5500791883634295 {Pose: {Head: [-141.18409198214496f, 11.226204925547744f, -7.966170873923856f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5815867060308735 64.78804398608636 0.6367458345772807 {Pose: {Head: [-148.86954774479858f, -1.4670841880326833f, -1.0800426838398272f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9201673070154845 65.41210389862336 1.6708026491746448 {Pose: {Head: [-129.9554549812973f, 12.839315982448259f, -8.360022492979798f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.941275488015511 65.0625652802462 0.9516187441066306 {Pose: {Head: [-120.07099536891508f, 46.18061394723436f, -42.206006979275365f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7963704504877958 64.9449427853764 0.49818154345000637 {Pose: {Head: [-154.09236088821174f, -0.7569288870420025f, -9.24545689826965f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.8271108170255106 64.8883811168688 0.9038101567621944 {Pose: {Head: [-123.38200715435727f, -14.716372165964561f, -23.926238550969277f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4408670496452427 65.14749010818787 1.1056221006064735 {Pose: {Head: [-143.43792980361937f, 4.979286012065316f, 0.327020297427046f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.8270645148411573 65.53996360994758 1.601988430181693 {Pose: {Head: [-141.76281629987065f, -3.9601903913599528f, 11.513779439766866f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2201419095504376 65.10800445850109 0.3678463238097104 {Pose: {Head: [-155.8403527461607f, -2.138024631727093f, -18.863194028008806f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.316558390657502 64.81955623426987 0.1380100876886083 {Pose: {Head: [-177.48248763580074f, 0.13514276005549422f, -0.5060124022553603f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6919624398059026 65.03663422199608 1.4064883065611817 {Pose: {Head: [-127.68812900040126f, -0.8970569338966209f, -1.0004356195543127f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7153077566409185 64.94486574671994 0.5256080405998732 {Pose: {Head: [-154.2394244050897f, -1.190345733152527f, -8.195311092670657f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6563417299310954 65.57093555168896 1.5803832008426806 {Pose: {Head: [-143.20620259139224f, 5.29572172123352f, -2.1398861965211435f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5682874199002939 64.63064038334288 0.20681837444944573 {Pose: {Head: [-157.83157613052435f, -11.02704920977648f, 13.482530492544942f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.7792509837345662 65.39583601630416 1.823306288517559 {Pose: {Head: [-125.57450506537491f, -30.479362607305152f, 24.753064083717433f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7711022629478137 64.9316247480343 0.9816979585038991 {Pose: {Head: [-116.07657398759282f, 60.39175859786257f, -48.21570451250271f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.9594164887211556 65.00661128345133 0.2234962984306444 {Pose: {Head: [-149.46786983544456f, 17.14249039292447f, -41.6976572241508f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.4609429955968606 65.19773976444407 0.3495724321332386 {Pose: {Head: [-152.00445792022637f, 0.060716742049314834f, 10.398840002346596f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.35598450630102363 64.57598960407518 0.2921434901980102 {Pose: {Head: [-153.27110975782904f, -0.1471194195313387f, -2.3969005864619106f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9639474666714556 64.96408990583673 0.3201168567459313 {Pose: {Head: [-146.3083360943479f, 19.414438368309828f, -38.529334213013556f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.37472874651203336 64.7976027999301 0.2901514322084098 {Pose: {Head: [-154.87697133267085f, 0.027647040937982183f, -3.396076259898f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.9817412782813095 65.20909469831156 0.9931374203005374 {Pose: {Head: [-125.94519019491469f, 38.306525637015596f, -34.68092032183694f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1626057672549956 65.05732366133071 0.9685107708994211 {Pose: {Head: [-120.98991330294365f, 7.306438641417128f, 21.89540956108642f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7464465928646415 65.32285076392441 1.6548656827973531 {Pose: {Head: [-127.3630695877247f, 8.097810801150516f, -8.026451060043323f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.1804589297838621 64.53963614675051 0.15547704835294127 {Pose: {Head: [-160.85559667511015f, 7.202985220094397f, -12.470889687863206f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.6326589380614336 65.59113078353718 1.618192025102422 {Pose: {Head: [-136.06725738859112f, -2.522049509575471f, 6.526358464276605f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7083959394285226 65.39133227721616 1.5515511279576697 {Pose: {Head: [-120.53964557969988f, 25.902449189404663f, -30.298919275849517f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.7149087403877097 64.92993563615106 1.0036164654972484 {Pose: {Head: [-104.67419406761354f, -27.677613454542637f, 34.608063656409996f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4926727992452358 65.61734198795632 1.6978098124884986 {Pose: {Head: [-131.58650889504642f, -8.494887314060243f, -5.613771738733131f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.6868636328397564 65.16984036843523 1.1463679174269787 {Pose: {Head: [-138.99792793815607f, 0.9646619323497904f, 0.52664494128452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.446536694637318 65.21427860670208 0.0639757524758251 {Pose: {Head: [170.0501900197142f, 27.690030208903124f, 27.78953440054144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4203124816015293 65.28800437972733 0.8951458306127478 {Pose: {Head: [-127.37766866979764f, 39.5456525498901f, -1.0755083434348225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8561597347324634 65.2856357162338 1.128706064183669 {Pose: {Head: [-140.30210032267732f, 0.5879181508404208f, -3.3535361710824194f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5071529687682571 64.99130422676683 0.03025394489539779 {Pose: {Head: [122.85432108308709f, 6.4812510803936725f, 11.44181529060434f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5423596814131755 65.24628245087446 0.4304176016828986 {Pose: {Head: [-157.76030513654695f, -5.172866160177289f, -15.72912509168921f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.821804655284661 64.64814986043635 -0.023252256552555507 {Pose: {Head: [-169.99117842887992f, -1.4142433310484104f, -32.77735434850656f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.9638877356849489 64.87891044217555 0.06484889161465704 {Pose: {Head: [-161.1214368960384f, -21.123263499634085f, 36.37896801531864f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.085193850401586 64.69129275996438 0.10632646106256179 {Pose: {Head: [-165.1744090824273f, -4.165478522479285f, -12.347326550064368f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.4275565866296787 64.75040666004243 -0.013161568822860459 {Pose: {Head: [-169.3718667689746f, -0.355611877880867f, -34.638036802694224f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.6317626728740016 64.17496602958262 -0.19541514907249993 {Pose: {Head: [-171.04507237169983f, 9.301505983456769f, -66.46983797830947f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.133284223481274 65.26642402303138 -0.126016598446772 {Pose: {Head: [-175.3776544304634f, 0.026664356789623044f, -8.926801318445321f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.3015528401340215 64.85077179722144 0.7767649421550358 {Pose: {Head: [-135.89200788691778f, -15.299717427346941f, 16.405911093147324f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.672864143406657 64.10124484877495 -0.16740657569436515 {Pose: {Head: [-169.14400318914383f, 11.759215598649668f, -73.60935817847285f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.5359155254130594 65.32609475768078 1.081669881433144 {Pose: {Head: [-141.27131702201112f, -0.7947397236731333f, -4.342744324859289f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.7711212764030453 65.46842243014402 1.7766857388535862 {Pose: {Head: [-127.64143670793524f, 6.785002309703949f, -6.943828365789888f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.2118280369722743 65.31938772396333 0.947852146773119 {Pose: {Head: [-127.55330786510912f, 29.543934112949643f, -2.052677743467751f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3901981288753098 65.33717460166837 0.26836403224363276 {Pose: {Head: [-156.8371025029545f, 2.7844537760040784f, -19.886429905191722f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.2537568048401382 64.78799518025721 0.04564345012917699 {Pose: {Head: [-163.44934622225725f, -17.505915778775087f, 27.18689750836437f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.8895090224938738 65.11514123180443 0.1345720869233535 {Pose: {Head: [-161.57155391289052f, 0.06381157983848403f, -33.32252767074445f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 0.5890029263664102 65.19982451808659 0.7224463774444688 {Pose: {Head: [-151.91974285604647f, 5.194261021706693f, -9.892703006302765f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.4512193008360494 65.3751697192765 1.051825370533288 {Pose: {Head: [-142.37592661108596f, -3.9374488594141877f, -1.0420216391468233f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 1.3875038484142492 65.3625373910743 0.9793116902022552 {Pose: {Head: [-142.78169591757134f, -7.098650359859386f, 2.9542297644846442f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}
summon armor_stand 2.1321903443658274 65.09042472229122 0.8762310513589042 {Pose: {Head: [-113.24083556828357f, -11.097637914434527f, 30.05083102258759f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"minecraft:apple", Count:1b}], Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish



