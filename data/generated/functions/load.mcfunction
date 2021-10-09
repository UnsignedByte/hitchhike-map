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
scoreboard objectives add quest-book-upd dummy

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
scoreboard players set 2000 const 2000
scoreboard players set 2048 const 2048
scoreboard players set 3000 const 3000
scoreboard players set 4000 const 4000
scoreboard players set 4096 const 4096
scoreboard players set 5000 const 5000
scoreboard players set 6000 const 6000
scoreboard players set 7000 const 7000
scoreboard players set 8000 const 8000
scoreboard players set 8192 const 8192
scoreboard players set 9000 const 9000
scoreboard players set 10000 const 10000
scoreboard players set 11000 const 11000
scoreboard players set 12000 const 12000
scoreboard players set 13000 const 13000
scoreboard players set 14000 const 14000
scoreboard players set 15000 const 15000
scoreboard players set 16000 const 16000
scoreboard players set 16384 const 16384
scoreboard players set 17000 const 17000
scoreboard players set 18000 const 18000
scoreboard players set 19000 const 19000
scoreboard players set 20000 const 20000
scoreboard players set 21000 const 21000
scoreboard players set 22000 const 22000
scoreboard players set 23000 const 23000
scoreboard players set 24000 const 24000
scoreboard players set 25000 const 25000
scoreboard players set 26000 const 26000
scoreboard players set 27000 const 27000
scoreboard players set 28000 const 28000
scoreboard players set 29000 const 29000
scoreboard players set 30000 const 30000
scoreboard players set 31000 const 31000
scoreboard players set 32000 const 32000
scoreboard players set 32768 const 32768
scoreboard players set 33000 const 33000
scoreboard players set 34000 const 34000
scoreboard players set 35000 const 35000
scoreboard players set 36000 const 36000
scoreboard players set 37000 const 37000
scoreboard players set 38000 const 38000
scoreboard players set 39000 const 39000
scoreboard players set 40000 const 40000
scoreboard players set 41000 const 41000
scoreboard players set 42000 const 42000
scoreboard players set 43000 const 43000
scoreboard players set 44000 const 44000
scoreboard players set 45000 const 45000
scoreboard players set 46000 const 46000
scoreboard players set 47000 const 47000
scoreboard players set 48000 const 48000
scoreboard players set 49000 const 49000
scoreboard players set 50000 const 50000
scoreboard players set 51000 const 51000
scoreboard players set 52000 const 52000
scoreboard players set 53000 const 53000
scoreboard players set 54000 const 54000
scoreboard players set 55000 const 55000
scoreboard players set 56000 const 56000
scoreboard players set 57000 const 57000
scoreboard players set 58000 const 58000
scoreboard players set 59000 const 59000
scoreboard players set 60000 const 60000
scoreboard players set 61000 const 61000
scoreboard players set 62000 const 62000
scoreboard players set 63000 const 63000
scoreboard players set 64000 const 64000
scoreboard players set 65000 const 65000
scoreboard players set 65536 const 65536
scoreboard players set 66000 const 66000
scoreboard players set 67000 const 67000
scoreboard players set 68000 const 68000
scoreboard players set 69000 const 69000
scoreboard players set 70000 const 70000
scoreboard players set 71000 const 71000
scoreboard players set 72000 const 72000
scoreboard players set 73000 const 73000
scoreboard players set 74000 const 74000
scoreboard players set 75000 const 75000
scoreboard players set 76000 const 76000
scoreboard players set 77000 const 77000
scoreboard players set 78000 const 78000
scoreboard players set 79000 const 79000
scoreboard players set 80000 const 80000
scoreboard players set 81000 const 81000
scoreboard players set 82000 const 82000
scoreboard players set 83000 const 83000
scoreboard players set 84000 const 84000
scoreboard players set 85000 const 85000
scoreboard players set 86000 const 86000
scoreboard players set 87000 const 87000
scoreboard players set 88000 const 88000
scoreboard players set 89000 const 89000
scoreboard players set 90000 const 90000
scoreboard players set 91000 const 91000
scoreboard players set 92000 const 92000
scoreboard players set 93000 const 93000
scoreboard players set 94000 const 94000
scoreboard players set 95000 const 95000
scoreboard players set 96000 const 96000
scoreboard players set 97000 const 97000
scoreboard players set 98000 const 98000
scoreboard players set 99000 const 99000
scoreboard players set 100000 const 100000
scoreboard players set 101000 const 101000
scoreboard players set 102000 const 102000
scoreboard players set 103000 const 103000
scoreboard players set 104000 const 104000
scoreboard players set 105000 const 105000
scoreboard players set 106000 const 106000
scoreboard players set 107000 const 107000
scoreboard players set 108000 const 108000
scoreboard players set 109000 const 109000
scoreboard players set 110000 const 110000
scoreboard players set 111000 const 111000
scoreboard players set 112000 const 112000
scoreboard players set 113000 const 113000
scoreboard players set 114000 const 114000
scoreboard players set 115000 const 115000
scoreboard players set 116000 const 116000
scoreboard players set 117000 const 117000
scoreboard players set 118000 const 118000
scoreboard players set 119000 const 119000
scoreboard players set 120000 const 120000
scoreboard players set 121000 const 121000
scoreboard players set 122000 const 122000
scoreboard players set 123000 const 123000
scoreboard players set 124000 const 124000
scoreboard players set 125000 const 125000
scoreboard players set 126000 const 126000
scoreboard players set 127000 const 127000
scoreboard players set 128000 const 128000
scoreboard players set 129000 const 129000
scoreboard players set 130000 const 130000
scoreboard players set 131000 const 131000
scoreboard players set 131072 const 131072
scoreboard players set 132000 const 132000
scoreboard players set 133000 const 133000
scoreboard players set 134000 const 134000
scoreboard players set 135000 const 135000
scoreboard players set 136000 const 136000
scoreboard players set 137000 const 137000
scoreboard players set 138000 const 138000
scoreboard players set 139000 const 139000
scoreboard players set 140000 const 140000
scoreboard players set 141000 const 141000
scoreboard players set 142000 const 142000
scoreboard players set 143000 const 143000
scoreboard players set 144000 const 144000
scoreboard players set 145000 const 145000
scoreboard players set 146000 const 146000
scoreboard players set 147000 const 147000
scoreboard players set 148000 const 148000
scoreboard players set 149000 const 149000
scoreboard players set 150000 const 150000
scoreboard players set 151000 const 151000
scoreboard players set 152000 const 152000
scoreboard players set 153000 const 153000
scoreboard players set 154000 const 154000
scoreboard players set 155000 const 155000
scoreboard players set 156000 const 156000
scoreboard players set 157000 const 157000
scoreboard players set 158000 const 158000
scoreboard players set 159000 const 159000
scoreboard players set 160000 const 160000
scoreboard players set 161000 const 161000
scoreboard players set 162000 const 162000
scoreboard players set 163000 const 163000
scoreboard players set 164000 const 164000
scoreboard players set 165000 const 165000
scoreboard players set 166000 const 166000
scoreboard players set 167000 const 167000
scoreboard players set 168000 const 168000
scoreboard players set 169000 const 169000
scoreboard players set 170000 const 170000
scoreboard players set 171000 const 171000
scoreboard players set 172000 const 172000
scoreboard players set 173000 const 173000
scoreboard players set 174000 const 174000
scoreboard players set 175000 const 175000
scoreboard players set 176000 const 176000
scoreboard players set 177000 const 177000
scoreboard players set 178000 const 178000
scoreboard players set 179000 const 179000
scoreboard players set 180000 const 180000
scoreboard players set 181000 const 181000
scoreboard players set 182000 const 182000
scoreboard players set 183000 const 183000
scoreboard players set 184000 const 184000
scoreboard players set 185000 const 185000
scoreboard players set 186000 const 186000
scoreboard players set 187000 const 187000
scoreboard players set 188000 const 188000
scoreboard players set 189000 const 189000
scoreboard players set 190000 const 190000
scoreboard players set 191000 const 191000
scoreboard players set 192000 const 192000
scoreboard players set 193000 const 193000
scoreboard players set 194000 const 194000
scoreboard players set 195000 const 195000
scoreboard players set 196000 const 196000
scoreboard players set 197000 const 197000
scoreboard players set 198000 const 198000
scoreboard players set 199000 const 199000
scoreboard players set 200000 const 200000
scoreboard players set 201000 const 201000
scoreboard players set 202000 const 202000
scoreboard players set 203000 const 203000
scoreboard players set 204000 const 204000
scoreboard players set 205000 const 205000
scoreboard players set 206000 const 206000
scoreboard players set 207000 const 207000
scoreboard players set 208000 const 208000
scoreboard players set 209000 const 209000
scoreboard players set 210000 const 210000
scoreboard players set 211000 const 211000
scoreboard players set 212000 const 212000
scoreboard players set 213000 const 213000
scoreboard players set 214000 const 214000
scoreboard players set 215000 const 215000
scoreboard players set 216000 const 216000
scoreboard players set 217000 const 217000
scoreboard players set 218000 const 218000
scoreboard players set 219000 const 219000
scoreboard players set 220000 const 220000
scoreboard players set 221000 const 221000
scoreboard players set 222000 const 222000
scoreboard players set 223000 const 223000
scoreboard players set 224000 const 224000
scoreboard players set 225000 const 225000
scoreboard players set 226000 const 226000
scoreboard players set 227000 const 227000
scoreboard players set 228000 const 228000
scoreboard players set 229000 const 229000
scoreboard players set 230000 const 230000
scoreboard players set 231000 const 231000
scoreboard players set 232000 const 232000
scoreboard players set 233000 const 233000
scoreboard players set 234000 const 234000
scoreboard players set 235000 const 235000
scoreboard players set 236000 const 236000
scoreboard players set 237000 const 237000
scoreboard players set 238000 const 238000
scoreboard players set 239000 const 239000
scoreboard players set 240000 const 240000
scoreboard players set 241000 const 241000
scoreboard players set 242000 const 242000
scoreboard players set 243000 const 243000
scoreboard players set 244000 const 244000
scoreboard players set 245000 const 245000
scoreboard players set 246000 const 246000
scoreboard players set 247000 const 247000
scoreboard players set 248000 const 248000
scoreboard players set 249000 const 249000
scoreboard players set 250000 const 250000
scoreboard players set 251000 const 251000
scoreboard players set 252000 const 252000
scoreboard players set 253000 const 253000
scoreboard players set 254000 const 254000
scoreboard players set 255000 const 255000
scoreboard players set 256000 const 256000
scoreboard players set 257000 const 257000
scoreboard players set 258000 const 258000
scoreboard players set 259000 const 259000
scoreboard players set 260000 const 260000
scoreboard players set 261000 const 261000
scoreboard players set 262000 const 262000
scoreboard players set 262144 const 262144
scoreboard players set 263000 const 263000
scoreboard players set 264000 const 264000
scoreboard players set 265000 const 265000
scoreboard players set 266000 const 266000
scoreboard players set 267000 const 267000
scoreboard players set 268000 const 268000
scoreboard players set 269000 const 269000
scoreboard players set 270000 const 270000
scoreboard players set 271000 const 271000
scoreboard players set 272000 const 272000
scoreboard players set 273000 const 273000
scoreboard players set 274000 const 274000
scoreboard players set 275000 const 275000
scoreboard players set 276000 const 276000
scoreboard players set 277000 const 277000
scoreboard players set 278000 const 278000
scoreboard players set 279000 const 279000
scoreboard players set 280000 const 280000
scoreboard players set 281000 const 281000
scoreboard players set 282000 const 282000
scoreboard players set 283000 const 283000
scoreboard players set 284000 const 284000
scoreboard players set 285000 const 285000
scoreboard players set 286000 const 286000
scoreboard players set 287000 const 287000
scoreboard players set 288000 const 288000
scoreboard players set 289000 const 289000
scoreboard players set 290000 const 290000
scoreboard players set 291000 const 291000
scoreboard players set 292000 const 292000
scoreboard players set 293000 const 293000
scoreboard players set 294000 const 294000
scoreboard players set 295000 const 295000
scoreboard players set 296000 const 296000
scoreboard players set 297000 const 297000
scoreboard players set 298000 const 298000
scoreboard players set 299000 const 299000
scoreboard players set 300000 const 300000
scoreboard players set 301000 const 301000
scoreboard players set 302000 const 302000
scoreboard players set 303000 const 303000
scoreboard players set 304000 const 304000
scoreboard players set 305000 const 305000
scoreboard players set 306000 const 306000
scoreboard players set 307000 const 307000
scoreboard players set 308000 const 308000
scoreboard players set 309000 const 309000
scoreboard players set 310000 const 310000
scoreboard players set 311000 const 311000
scoreboard players set 312000 const 312000
scoreboard players set 313000 const 313000
scoreboard players set 314000 const 314000
scoreboard players set 315000 const 315000
scoreboard players set 316000 const 316000
scoreboard players set 317000 const 317000
scoreboard players set 318000 const 318000
scoreboard players set 319000 const 319000
scoreboard players set 320000 const 320000
scoreboard players set 321000 const 321000
scoreboard players set 322000 const 322000
scoreboard players set 323000 const 323000
scoreboard players set 324000 const 324000
scoreboard players set 325000 const 325000
scoreboard players set 326000 const 326000
scoreboard players set 327000 const 327000
scoreboard players set 328000 const 328000
scoreboard players set 329000 const 329000
scoreboard players set 330000 const 330000
scoreboard players set 331000 const 331000
scoreboard players set 332000 const 332000
scoreboard players set 333000 const 333000
scoreboard players set 334000 const 334000
scoreboard players set 335000 const 335000
scoreboard players set 336000 const 336000
scoreboard players set 337000 const 337000
scoreboard players set 338000 const 338000
scoreboard players set 339000 const 339000
scoreboard players set 340000 const 340000
scoreboard players set 341000 const 341000
scoreboard players set 342000 const 342000
scoreboard players set 343000 const 343000
scoreboard players set 344000 const 344000
scoreboard players set 345000 const 345000
scoreboard players set 346000 const 346000
scoreboard players set 347000 const 347000
scoreboard players set 348000 const 348000
scoreboard players set 349000 const 349000
scoreboard players set 350000 const 350000
scoreboard players set 351000 const 351000
scoreboard players set 352000 const 352000
scoreboard players set 353000 const 353000
scoreboard players set 354000 const 354000
scoreboard players set 355000 const 355000
scoreboard players set 356000 const 356000
scoreboard players set 357000 const 357000
scoreboard players set 358000 const 358000
scoreboard players set 359000 const 359000
scoreboard players set 360000 const 360000
scoreboard players set 361000 const 361000
scoreboard players set 362000 const 362000
scoreboard players set 363000 const 363000
scoreboard players set 364000 const 364000
scoreboard players set 365000 const 365000
scoreboard players set 366000 const 366000
scoreboard players set 367000 const 367000
scoreboard players set 368000 const 368000
scoreboard players set 369000 const 369000
scoreboard players set 370000 const 370000
scoreboard players set 371000 const 371000
scoreboard players set 372000 const 372000
scoreboard players set 373000 const 373000
scoreboard players set 374000 const 374000
scoreboard players set 375000 const 375000
scoreboard players set 376000 const 376000
scoreboard players set 377000 const 377000
scoreboard players set 378000 const 378000
scoreboard players set 379000 const 379000
scoreboard players set 380000 const 380000
scoreboard players set 381000 const 381000
scoreboard players set 382000 const 382000
scoreboard players set 383000 const 383000
scoreboard players set 384000 const 384000
scoreboard players set 385000 const 385000
scoreboard players set 386000 const 386000
scoreboard players set 387000 const 387000
scoreboard players set 388000 const 388000
scoreboard players set 389000 const 389000
scoreboard players set 390000 const 390000
scoreboard players set 391000 const 391000
scoreboard players set 392000 const 392000
scoreboard players set 393000 const 393000
scoreboard players set 394000 const 394000
scoreboard players set 395000 const 395000
scoreboard players set 396000 const 396000
scoreboard players set 397000 const 397000
scoreboard players set 398000 const 398000
scoreboard players set 399000 const 399000
scoreboard players set 400000 const 400000
scoreboard players set 401000 const 401000
scoreboard players set 402000 const 402000
scoreboard players set 403000 const 403000
scoreboard players set 404000 const 404000
scoreboard players set 405000 const 405000
scoreboard players set 406000 const 406000
scoreboard players set 407000 const 407000
scoreboard players set 408000 const 408000
scoreboard players set 409000 const 409000
scoreboard players set 410000 const 410000
scoreboard players set 411000 const 411000
scoreboard players set 412000 const 412000
scoreboard players set 413000 const 413000
scoreboard players set 414000 const 414000
scoreboard players set 415000 const 415000
scoreboard players set 416000 const 416000
scoreboard players set 417000 const 417000
scoreboard players set 418000 const 418000
scoreboard players set 419000 const 419000
scoreboard players set 420000 const 420000
scoreboard players set 421000 const 421000
scoreboard players set 422000 const 422000
scoreboard players set 423000 const 423000
scoreboard players set 424000 const 424000
scoreboard players set 425000 const 425000
scoreboard players set 426000 const 426000
scoreboard players set 427000 const 427000
scoreboard players set 428000 const 428000
scoreboard players set 429000 const 429000
scoreboard players set 430000 const 430000
scoreboard players set 431000 const 431000
scoreboard players set 432000 const 432000
scoreboard players set 433000 const 433000
scoreboard players set 434000 const 434000
scoreboard players set 435000 const 435000
scoreboard players set 436000 const 436000
scoreboard players set 437000 const 437000
scoreboard players set 438000 const 438000
scoreboard players set 439000 const 439000
scoreboard players set 440000 const 440000
scoreboard players set 441000 const 441000
scoreboard players set 442000 const 442000
scoreboard players set 443000 const 443000
scoreboard players set 444000 const 444000
scoreboard players set 445000 const 445000
scoreboard players set 446000 const 446000
scoreboard players set 447000 const 447000
scoreboard players set 448000 const 448000
scoreboard players set 449000 const 449000
scoreboard players set 450000 const 450000
scoreboard players set 451000 const 451000
scoreboard players set 452000 const 452000
scoreboard players set 453000 const 453000
scoreboard players set 454000 const 454000
scoreboard players set 455000 const 455000
scoreboard players set 456000 const 456000
scoreboard players set 457000 const 457000
scoreboard players set 458000 const 458000
scoreboard players set 459000 const 459000
scoreboard players set 460000 const 460000
scoreboard players set 461000 const 461000
scoreboard players set 462000 const 462000
scoreboard players set 463000 const 463000
scoreboard players set 464000 const 464000
scoreboard players set 465000 const 465000
scoreboard players set 466000 const 466000
scoreboard players set 467000 const 467000
scoreboard players set 468000 const 468000
scoreboard players set 469000 const 469000
scoreboard players set 470000 const 470000
scoreboard players set 471000 const 471000
scoreboard players set 472000 const 472000
scoreboard players set 473000 const 473000
scoreboard players set 474000 const 474000
scoreboard players set 475000 const 475000
scoreboard players set 476000 const 476000
scoreboard players set 477000 const 477000
scoreboard players set 478000 const 478000
scoreboard players set 479000 const 479000
scoreboard players set 480000 const 480000
scoreboard players set 481000 const 481000
scoreboard players set 482000 const 482000
scoreboard players set 483000 const 483000
scoreboard players set 484000 const 484000
scoreboard players set 485000 const 485000
scoreboard players set 486000 const 486000
scoreboard players set 487000 const 487000
scoreboard players set 488000 const 488000
scoreboard players set 489000 const 489000
scoreboard players set 490000 const 490000
scoreboard players set 491000 const 491000
scoreboard players set 492000 const 492000
scoreboard players set 493000 const 493000
scoreboard players set 494000 const 494000
scoreboard players set 495000 const 495000
scoreboard players set 496000 const 496000
scoreboard players set 497000 const 497000
scoreboard players set 498000 const 498000
scoreboard players set 499000 const 499000
scoreboard players set 500000 const 500000
scoreboard players set 501000 const 501000
scoreboard players set 502000 const 502000
scoreboard players set 503000 const 503000
scoreboard players set 504000 const 504000
scoreboard players set 505000 const 505000
scoreboard players set 506000 const 506000
scoreboard players set 507000 const 507000
scoreboard players set 508000 const 508000
scoreboard players set 509000 const 509000
scoreboard players set 510000 const 510000
scoreboard players set 511000 const 511000
scoreboard players set 512000 const 512000
scoreboard players set 513000 const 513000
scoreboard players set 514000 const 514000
scoreboard players set 515000 const 515000
scoreboard players set 516000 const 516000
scoreboard players set 517000 const 517000
scoreboard players set 518000 const 518000
scoreboard players set 519000 const 519000
scoreboard players set 520000 const 520000
scoreboard players set 521000 const 521000
scoreboard players set 522000 const 522000
scoreboard players set 523000 const 523000
scoreboard players set 524000 const 524000
scoreboard players set 524288 const 524288
scoreboard players set 525000 const 525000
scoreboard players set 526000 const 526000
scoreboard players set 527000 const 527000
scoreboard players set 528000 const 528000
scoreboard players set 529000 const 529000
scoreboard players set 530000 const 530000
scoreboard players set 531000 const 531000
scoreboard players set 532000 const 532000
scoreboard players set 533000 const 533000
scoreboard players set 534000 const 534000
scoreboard players set 535000 const 535000
scoreboard players set 536000 const 536000
scoreboard players set 537000 const 537000
scoreboard players set 538000 const 538000
scoreboard players set 539000 const 539000
scoreboard players set 540000 const 540000
scoreboard players set 541000 const 541000
scoreboard players set 542000 const 542000
scoreboard players set 543000 const 543000
scoreboard players set 544000 const 544000
scoreboard players set 545000 const 545000
scoreboard players set 546000 const 546000
scoreboard players set 547000 const 547000
scoreboard players set 548000 const 548000
scoreboard players set 549000 const 549000
scoreboard players set 550000 const 550000
scoreboard players set 551000 const 551000
scoreboard players set 552000 const 552000
scoreboard players set 553000 const 553000
scoreboard players set 554000 const 554000
scoreboard players set 555000 const 555000
scoreboard players set 556000 const 556000
scoreboard players set 557000 const 557000
scoreboard players set 558000 const 558000
scoreboard players set 559000 const 559000
scoreboard players set 560000 const 560000
scoreboard players set 561000 const 561000
scoreboard players set 562000 const 562000
scoreboard players set 563000 const 563000
scoreboard players set 564000 const 564000
scoreboard players set 565000 const 565000
scoreboard players set 566000 const 566000
scoreboard players set 567000 const 567000
scoreboard players set 568000 const 568000
scoreboard players set 569000 const 569000
scoreboard players set 570000 const 570000
scoreboard players set 571000 const 571000
scoreboard players set 572000 const 572000
scoreboard players set 573000 const 573000
scoreboard players set 574000 const 574000
scoreboard players set 575000 const 575000
scoreboard players set 576000 const 576000
scoreboard players set 577000 const 577000
scoreboard players set 578000 const 578000
scoreboard players set 579000 const 579000
scoreboard players set 580000 const 580000
scoreboard players set 581000 const 581000
scoreboard players set 582000 const 582000
scoreboard players set 583000 const 583000
scoreboard players set 584000 const 584000
scoreboard players set 585000 const 585000
scoreboard players set 586000 const 586000
scoreboard players set 587000 const 587000
scoreboard players set 588000 const 588000
scoreboard players set 589000 const 589000
scoreboard players set 590000 const 590000
scoreboard players set 591000 const 591000
scoreboard players set 592000 const 592000
scoreboard players set 593000 const 593000
scoreboard players set 594000 const 594000
scoreboard players set 595000 const 595000
scoreboard players set 596000 const 596000
scoreboard players set 597000 const 597000
scoreboard players set 598000 const 598000
scoreboard players set 599000 const 599000
scoreboard players set 600000 const 600000
scoreboard players set 601000 const 601000
scoreboard players set 602000 const 602000
scoreboard players set 603000 const 603000
scoreboard players set 604000 const 604000
scoreboard players set 605000 const 605000
scoreboard players set 606000 const 606000
scoreboard players set 607000 const 607000
scoreboard players set 608000 const 608000
scoreboard players set 609000 const 609000
scoreboard players set 610000 const 610000
scoreboard players set 611000 const 611000
scoreboard players set 612000 const 612000
scoreboard players set 613000 const 613000
scoreboard players set 614000 const 614000
scoreboard players set 615000 const 615000
scoreboard players set 616000 const 616000
scoreboard players set 617000 const 617000
scoreboard players set 618000 const 618000
scoreboard players set 619000 const 619000
scoreboard players set 620000 const 620000
scoreboard players set 621000 const 621000
scoreboard players set 622000 const 622000
scoreboard players set 623000 const 623000
scoreboard players set 624000 const 624000
scoreboard players set 625000 const 625000
scoreboard players set 626000 const 626000
scoreboard players set 627000 const 627000
scoreboard players set 628000 const 628000
scoreboard players set 629000 const 629000
scoreboard players set 630000 const 630000
scoreboard players set 631000 const 631000
scoreboard players set 632000 const 632000
scoreboard players set 633000 const 633000
scoreboard players set 634000 const 634000
scoreboard players set 635000 const 635000
scoreboard players set 636000 const 636000
scoreboard players set 637000 const 637000
scoreboard players set 638000 const 638000
scoreboard players set 639000 const 639000
scoreboard players set 640000 const 640000
scoreboard players set 641000 const 641000
scoreboard players set 642000 const 642000
scoreboard players set 643000 const 643000
scoreboard players set 644000 const 644000
scoreboard players set 645000 const 645000
scoreboard players set 646000 const 646000
scoreboard players set 647000 const 647000
scoreboard players set 648000 const 648000
scoreboard players set 649000 const 649000
scoreboard players set 650000 const 650000
scoreboard players set 651000 const 651000
scoreboard players set 652000 const 652000
scoreboard players set 653000 const 653000
scoreboard players set 654000 const 654000
scoreboard players set 655000 const 655000
scoreboard players set 656000 const 656000
scoreboard players set 657000 const 657000
scoreboard players set 658000 const 658000
scoreboard players set 659000 const 659000
scoreboard players set 660000 const 660000
scoreboard players set 661000 const 661000
scoreboard players set 662000 const 662000
scoreboard players set 663000 const 663000
scoreboard players set 664000 const 664000
scoreboard players set 665000 const 665000
scoreboard players set 666000 const 666000
scoreboard players set 667000 const 667000
scoreboard players set 668000 const 668000
scoreboard players set 669000 const 669000
scoreboard players set 670000 const 670000
scoreboard players set 671000 const 671000
scoreboard players set 672000 const 672000
scoreboard players set 673000 const 673000
scoreboard players set 674000 const 674000
scoreboard players set 675000 const 675000
scoreboard players set 676000 const 676000
scoreboard players set 677000 const 677000
scoreboard players set 678000 const 678000
scoreboard players set 679000 const 679000
scoreboard players set 680000 const 680000
scoreboard players set 681000 const 681000
scoreboard players set 682000 const 682000
scoreboard players set 683000 const 683000
scoreboard players set 684000 const 684000
scoreboard players set 685000 const 685000
scoreboard players set 686000 const 686000
scoreboard players set 687000 const 687000
scoreboard players set 688000 const 688000
scoreboard players set 689000 const 689000
scoreboard players set 690000 const 690000
scoreboard players set 691000 const 691000
scoreboard players set 692000 const 692000
scoreboard players set 693000 const 693000
scoreboard players set 694000 const 694000
scoreboard players set 695000 const 695000
scoreboard players set 696000 const 696000
scoreboard players set 697000 const 697000
scoreboard players set 698000 const 698000
scoreboard players set 699000 const 699000
scoreboard players set 700000 const 700000
scoreboard players set 701000 const 701000
scoreboard players set 702000 const 702000
scoreboard players set 703000 const 703000
scoreboard players set 704000 const 704000
scoreboard players set 705000 const 705000
scoreboard players set 706000 const 706000
scoreboard players set 707000 const 707000
scoreboard players set 708000 const 708000
scoreboard players set 709000 const 709000
scoreboard players set 710000 const 710000
scoreboard players set 711000 const 711000
scoreboard players set 712000 const 712000
scoreboard players set 713000 const 713000
scoreboard players set 714000 const 714000
scoreboard players set 715000 const 715000
scoreboard players set 716000 const 716000
scoreboard players set 717000 const 717000
scoreboard players set 718000 const 718000
scoreboard players set 719000 const 719000
scoreboard players set 720000 const 720000
scoreboard players set 721000 const 721000
scoreboard players set 722000 const 722000
scoreboard players set 723000 const 723000
scoreboard players set 724000 const 724000
scoreboard players set 725000 const 725000
scoreboard players set 726000 const 726000
scoreboard players set 727000 const 727000
scoreboard players set 728000 const 728000
scoreboard players set 729000 const 729000
scoreboard players set 730000 const 730000
scoreboard players set 731000 const 731000
scoreboard players set 732000 const 732000
scoreboard players set 733000 const 733000
scoreboard players set 734000 const 734000
scoreboard players set 735000 const 735000
scoreboard players set 736000 const 736000
scoreboard players set 737000 const 737000
scoreboard players set 738000 const 738000
scoreboard players set 739000 const 739000
scoreboard players set 740000 const 740000
scoreboard players set 741000 const 741000
scoreboard players set 742000 const 742000
scoreboard players set 743000 const 743000
scoreboard players set 744000 const 744000
scoreboard players set 745000 const 745000
scoreboard players set 746000 const 746000
scoreboard players set 747000 const 747000
scoreboard players set 748000 const 748000
scoreboard players set 749000 const 749000
scoreboard players set 750000 const 750000
scoreboard players set 751000 const 751000
scoreboard players set 752000 const 752000
scoreboard players set 753000 const 753000
scoreboard players set 754000 const 754000
scoreboard players set 755000 const 755000
scoreboard players set 756000 const 756000
scoreboard players set 757000 const 757000
scoreboard players set 758000 const 758000
scoreboard players set 759000 const 759000
scoreboard players set 760000 const 760000
scoreboard players set 761000 const 761000
scoreboard players set 762000 const 762000
scoreboard players set 763000 const 763000
scoreboard players set 764000 const 764000
scoreboard players set 765000 const 765000
scoreboard players set 766000 const 766000
scoreboard players set 767000 const 767000
scoreboard players set 768000 const 768000
scoreboard players set 769000 const 769000
scoreboard players set 770000 const 770000
scoreboard players set 771000 const 771000
scoreboard players set 772000 const 772000
scoreboard players set 773000 const 773000
scoreboard players set 774000 const 774000
scoreboard players set 775000 const 775000
scoreboard players set 776000 const 776000
scoreboard players set 777000 const 777000
scoreboard players set 778000 const 778000
scoreboard players set 779000 const 779000
scoreboard players set 780000 const 780000
scoreboard players set 781000 const 781000
scoreboard players set 782000 const 782000
scoreboard players set 783000 const 783000
scoreboard players set 784000 const 784000
scoreboard players set 785000 const 785000
scoreboard players set 786000 const 786000
scoreboard players set 787000 const 787000
scoreboard players set 788000 const 788000
scoreboard players set 789000 const 789000
scoreboard players set 790000 const 790000
scoreboard players set 791000 const 791000
scoreboard players set 792000 const 792000
scoreboard players set 793000 const 793000
scoreboard players set 794000 const 794000
scoreboard players set 795000 const 795000
scoreboard players set 796000 const 796000
scoreboard players set 797000 const 797000
scoreboard players set 798000 const 798000
scoreboard players set 799000 const 799000
scoreboard players set 800000 const 800000
scoreboard players set 801000 const 801000
scoreboard players set 802000 const 802000
scoreboard players set 803000 const 803000
scoreboard players set 804000 const 804000
scoreboard players set 805000 const 805000
scoreboard players set 806000 const 806000
scoreboard players set 807000 const 807000
scoreboard players set 808000 const 808000
scoreboard players set 809000 const 809000
scoreboard players set 810000 const 810000
scoreboard players set 811000 const 811000
scoreboard players set 812000 const 812000
scoreboard players set 813000 const 813000
scoreboard players set 814000 const 814000
scoreboard players set 815000 const 815000
scoreboard players set 816000 const 816000
scoreboard players set 817000 const 817000
scoreboard players set 818000 const 818000
scoreboard players set 819000 const 819000
scoreboard players set 820000 const 820000
scoreboard players set 821000 const 821000
scoreboard players set 822000 const 822000
scoreboard players set 823000 const 823000
scoreboard players set 824000 const 824000
scoreboard players set 825000 const 825000
scoreboard players set 826000 const 826000
scoreboard players set 827000 const 827000
scoreboard players set 828000 const 828000
scoreboard players set 829000 const 829000
scoreboard players set 830000 const 830000
scoreboard players set 831000 const 831000
scoreboard players set 832000 const 832000
scoreboard players set 833000 const 833000
scoreboard players set 834000 const 834000
scoreboard players set 835000 const 835000
scoreboard players set 836000 const 836000
scoreboard players set 837000 const 837000
scoreboard players set 838000 const 838000
scoreboard players set 839000 const 839000
scoreboard players set 840000 const 840000
scoreboard players set 841000 const 841000
scoreboard players set 842000 const 842000
scoreboard players set 843000 const 843000
scoreboard players set 844000 const 844000
scoreboard players set 845000 const 845000
scoreboard players set 846000 const 846000
scoreboard players set 847000 const 847000
scoreboard players set 848000 const 848000
scoreboard players set 849000 const 849000
scoreboard players set 850000 const 850000
scoreboard players set 851000 const 851000
scoreboard players set 852000 const 852000
scoreboard players set 853000 const 853000
scoreboard players set 854000 const 854000
scoreboard players set 855000 const 855000
scoreboard players set 856000 const 856000
scoreboard players set 857000 const 857000
scoreboard players set 858000 const 858000
scoreboard players set 859000 const 859000
scoreboard players set 860000 const 860000
scoreboard players set 861000 const 861000
scoreboard players set 862000 const 862000
scoreboard players set 863000 const 863000
scoreboard players set 864000 const 864000
scoreboard players set 865000 const 865000
scoreboard players set 866000 const 866000
scoreboard players set 867000 const 867000
scoreboard players set 868000 const 868000
scoreboard players set 869000 const 869000
scoreboard players set 870000 const 870000
scoreboard players set 871000 const 871000
scoreboard players set 872000 const 872000
scoreboard players set 873000 const 873000
scoreboard players set 874000 const 874000
scoreboard players set 875000 const 875000
scoreboard players set 876000 const 876000
scoreboard players set 877000 const 877000
scoreboard players set 878000 const 878000
scoreboard players set 879000 const 879000
scoreboard players set 880000 const 880000
scoreboard players set 881000 const 881000
scoreboard players set 882000 const 882000
scoreboard players set 883000 const 883000
scoreboard players set 884000 const 884000
scoreboard players set 885000 const 885000
scoreboard players set 886000 const 886000
scoreboard players set 887000 const 887000
scoreboard players set 888000 const 888000
scoreboard players set 889000 const 889000
scoreboard players set 890000 const 890000
scoreboard players set 891000 const 891000
scoreboard players set 892000 const 892000
scoreboard players set 893000 const 893000
scoreboard players set 894000 const 894000
scoreboard players set 895000 const 895000
scoreboard players set 896000 const 896000
scoreboard players set 897000 const 897000
scoreboard players set 898000 const 898000
scoreboard players set 899000 const 899000
scoreboard players set 900000 const 900000
scoreboard players set 901000 const 901000
scoreboard players set 902000 const 902000
scoreboard players set 903000 const 903000
scoreboard players set 904000 const 904000
scoreboard players set 905000 const 905000
scoreboard players set 906000 const 906000
scoreboard players set 907000 const 907000
scoreboard players set 908000 const 908000
scoreboard players set 909000 const 909000
scoreboard players set 910000 const 910000
scoreboard players set 911000 const 911000
scoreboard players set 912000 const 912000
scoreboard players set 913000 const 913000
scoreboard players set 914000 const 914000
scoreboard players set 915000 const 915000
scoreboard players set 916000 const 916000
scoreboard players set 917000 const 917000
scoreboard players set 918000 const 918000
scoreboard players set 919000 const 919000
scoreboard players set 920000 const 920000
scoreboard players set 921000 const 921000
scoreboard players set 922000 const 922000
scoreboard players set 923000 const 923000
scoreboard players set 924000 const 924000
scoreboard players set 925000 const 925000
scoreboard players set 926000 const 926000
scoreboard players set 927000 const 927000
scoreboard players set 928000 const 928000
scoreboard players set 929000 const 929000
scoreboard players set 930000 const 930000
scoreboard players set 931000 const 931000
scoreboard players set 932000 const 932000
scoreboard players set 933000 const 933000
scoreboard players set 934000 const 934000
scoreboard players set 935000 const 935000
scoreboard players set 936000 const 936000
scoreboard players set 937000 const 937000
scoreboard players set 938000 const 938000
scoreboard players set 939000 const 939000
scoreboard players set 940000 const 940000
scoreboard players set 941000 const 941000
scoreboard players set 942000 const 942000
scoreboard players set 943000 const 943000
scoreboard players set 944000 const 944000
scoreboard players set 945000 const 945000
scoreboard players set 946000 const 946000
scoreboard players set 947000 const 947000
scoreboard players set 948000 const 948000
scoreboard players set 949000 const 949000
scoreboard players set 950000 const 950000
scoreboard players set 951000 const 951000
scoreboard players set 952000 const 952000
scoreboard players set 953000 const 953000
scoreboard players set 954000 const 954000
scoreboard players set 955000 const 955000
scoreboard players set 956000 const 956000
scoreboard players set 957000 const 957000
scoreboard players set 958000 const 958000
scoreboard players set 959000 const 959000
scoreboard players set 960000 const 960000
scoreboard players set 961000 const 961000
scoreboard players set 962000 const 962000
scoreboard players set 963000 const 963000
scoreboard players set 964000 const 964000
scoreboard players set 965000 const 965000
scoreboard players set 966000 const 966000
scoreboard players set 967000 const 967000
scoreboard players set 968000 const 968000
scoreboard players set 969000 const 969000
scoreboard players set 970000 const 970000
scoreboard players set 971000 const 971000
scoreboard players set 972000 const 972000
scoreboard players set 973000 const 973000
scoreboard players set 974000 const 974000
scoreboard players set 975000 const 975000
scoreboard players set 976000 const 976000
scoreboard players set 977000 const 977000
scoreboard players set 978000 const 978000
scoreboard players set 979000 const 979000
scoreboard players set 980000 const 980000
scoreboard players set 981000 const 981000
scoreboard players set 982000 const 982000
scoreboard players set 983000 const 983000
scoreboard players set 984000 const 984000
scoreboard players set 985000 const 985000
scoreboard players set 986000 const 986000
scoreboard players set 987000 const 987000
scoreboard players set 988000 const 988000
scoreboard players set 989000 const 989000
scoreboard players set 990000 const 990000
scoreboard players set 991000 const 991000
scoreboard players set 992000 const 992000
scoreboard players set 993000 const 993000
scoreboard players set 994000 const 994000
scoreboard players set 995000 const 995000
scoreboard players set 996000 const 996000
scoreboard players set 997000 const 997000
scoreboard players set 998000 const 998000
scoreboard players set 999000 const 999000
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
scoreboard players set -1000 const -1000
scoreboard players set -1000000 const -1000000
scoreboard players set -999 const -999
scoreboard players set -999000 const -999000
scoreboard players set -998 const -998
scoreboard players set -998000 const -998000
scoreboard players set -997 const -997
scoreboard players set -997000 const -997000
scoreboard players set -996 const -996
scoreboard players set -996000 const -996000
scoreboard players set -995 const -995
scoreboard players set -995000 const -995000
scoreboard players set -994 const -994
scoreboard players set -994000 const -994000
scoreboard players set -993 const -993
scoreboard players set -993000 const -993000
scoreboard players set -992 const -992
scoreboard players set -992000 const -992000
scoreboard players set -991 const -991
scoreboard players set -991000 const -991000
scoreboard players set -990 const -990
scoreboard players set -990000 const -990000
scoreboard players set -989 const -989
scoreboard players set -989000 const -989000
scoreboard players set -988 const -988
scoreboard players set -988000 const -988000
scoreboard players set -987 const -987
scoreboard players set -987000 const -987000
scoreboard players set -986 const -986
scoreboard players set -986000 const -986000
scoreboard players set -985 const -985
scoreboard players set -985000 const -985000
scoreboard players set -984 const -984
scoreboard players set -984000 const -984000
scoreboard players set -983 const -983
scoreboard players set -983000 const -983000
scoreboard players set -982 const -982
scoreboard players set -982000 const -982000
scoreboard players set -981 const -981
scoreboard players set -981000 const -981000
scoreboard players set -980 const -980
scoreboard players set -980000 const -980000
scoreboard players set -979 const -979
scoreboard players set -979000 const -979000
scoreboard players set -978 const -978
scoreboard players set -978000 const -978000
scoreboard players set -977 const -977
scoreboard players set -977000 const -977000
scoreboard players set -976 const -976
scoreboard players set -976000 const -976000
scoreboard players set -975 const -975
scoreboard players set -975000 const -975000
scoreboard players set -974 const -974
scoreboard players set -974000 const -974000
scoreboard players set -973 const -973
scoreboard players set -973000 const -973000
scoreboard players set -972 const -972
scoreboard players set -972000 const -972000
scoreboard players set -971 const -971
scoreboard players set -971000 const -971000
scoreboard players set -970 const -970
scoreboard players set -970000 const -970000
scoreboard players set -969 const -969
scoreboard players set -969000 const -969000
scoreboard players set -968 const -968
scoreboard players set -968000 const -968000
scoreboard players set -967 const -967
scoreboard players set -967000 const -967000
scoreboard players set -966 const -966
scoreboard players set -966000 const -966000
scoreboard players set -965 const -965
scoreboard players set -965000 const -965000
scoreboard players set -964 const -964
scoreboard players set -964000 const -964000
scoreboard players set -963 const -963
scoreboard players set -963000 const -963000
scoreboard players set -962 const -962
scoreboard players set -962000 const -962000
scoreboard players set -961 const -961
scoreboard players set -961000 const -961000
scoreboard players set -960 const -960
scoreboard players set -960000 const -960000
scoreboard players set -959 const -959
scoreboard players set -959000 const -959000
scoreboard players set -958 const -958
scoreboard players set -958000 const -958000
scoreboard players set -957 const -957
scoreboard players set -957000 const -957000
scoreboard players set -956 const -956
scoreboard players set -956000 const -956000
scoreboard players set -955 const -955
scoreboard players set -955000 const -955000
scoreboard players set -954 const -954
scoreboard players set -954000 const -954000
scoreboard players set -953 const -953
scoreboard players set -953000 const -953000
scoreboard players set -952 const -952
scoreboard players set -952000 const -952000
scoreboard players set -951 const -951
scoreboard players set -951000 const -951000
scoreboard players set -950 const -950
scoreboard players set -950000 const -950000
scoreboard players set -949 const -949
scoreboard players set -949000 const -949000
scoreboard players set -948 const -948
scoreboard players set -948000 const -948000
scoreboard players set -947 const -947
scoreboard players set -947000 const -947000
scoreboard players set -946 const -946
scoreboard players set -946000 const -946000
scoreboard players set -945 const -945
scoreboard players set -945000 const -945000
scoreboard players set -944 const -944
scoreboard players set -944000 const -944000
scoreboard players set -943 const -943
scoreboard players set -943000 const -943000
scoreboard players set -942 const -942
scoreboard players set -942000 const -942000
scoreboard players set -941 const -941
scoreboard players set -941000 const -941000
scoreboard players set -940 const -940
scoreboard players set -940000 const -940000
scoreboard players set -939 const -939
scoreboard players set -939000 const -939000
scoreboard players set -938 const -938
scoreboard players set -938000 const -938000
scoreboard players set -937 const -937
scoreboard players set -937000 const -937000
scoreboard players set -936 const -936
scoreboard players set -936000 const -936000
scoreboard players set -935 const -935
scoreboard players set -935000 const -935000
scoreboard players set -934 const -934
scoreboard players set -934000 const -934000
scoreboard players set -933 const -933
scoreboard players set -933000 const -933000
scoreboard players set -932 const -932
scoreboard players set -932000 const -932000
scoreboard players set -931 const -931
scoreboard players set -931000 const -931000
scoreboard players set -930 const -930
scoreboard players set -930000 const -930000
scoreboard players set -929 const -929
scoreboard players set -929000 const -929000
scoreboard players set -928 const -928
scoreboard players set -928000 const -928000
scoreboard players set -927 const -927
scoreboard players set -927000 const -927000
scoreboard players set -926 const -926
scoreboard players set -926000 const -926000
scoreboard players set -925 const -925
scoreboard players set -925000 const -925000
scoreboard players set -924 const -924
scoreboard players set -924000 const -924000
scoreboard players set -923 const -923
scoreboard players set -923000 const -923000
scoreboard players set -922 const -922
scoreboard players set -922000 const -922000
scoreboard players set -921 const -921
scoreboard players set -921000 const -921000
scoreboard players set -920 const -920
scoreboard players set -920000 const -920000
scoreboard players set -919 const -919
scoreboard players set -919000 const -919000
scoreboard players set -918 const -918
scoreboard players set -918000 const -918000
scoreboard players set -917 const -917
scoreboard players set -917000 const -917000
scoreboard players set -916 const -916
scoreboard players set -916000 const -916000
scoreboard players set -915 const -915
scoreboard players set -915000 const -915000
scoreboard players set -914 const -914
scoreboard players set -914000 const -914000
scoreboard players set -913 const -913
scoreboard players set -913000 const -913000
scoreboard players set -912 const -912
scoreboard players set -912000 const -912000
scoreboard players set -911 const -911
scoreboard players set -911000 const -911000
scoreboard players set -910 const -910
scoreboard players set -910000 const -910000
scoreboard players set -909 const -909
scoreboard players set -909000 const -909000
scoreboard players set -908 const -908
scoreboard players set -908000 const -908000
scoreboard players set -907 const -907
scoreboard players set -907000 const -907000
scoreboard players set -906 const -906
scoreboard players set -906000 const -906000
scoreboard players set -905 const -905
scoreboard players set -905000 const -905000
scoreboard players set -904 const -904
scoreboard players set -904000 const -904000
scoreboard players set -903 const -903
scoreboard players set -903000 const -903000
scoreboard players set -902 const -902
scoreboard players set -902000 const -902000
scoreboard players set -901 const -901
scoreboard players set -901000 const -901000
scoreboard players set -900 const -900
scoreboard players set -900000 const -900000
scoreboard players set -899 const -899
scoreboard players set -899000 const -899000
scoreboard players set -898 const -898
scoreboard players set -898000 const -898000
scoreboard players set -897 const -897
scoreboard players set -897000 const -897000
scoreboard players set -896 const -896
scoreboard players set -896000 const -896000
scoreboard players set -895 const -895
scoreboard players set -895000 const -895000
scoreboard players set -894 const -894
scoreboard players set -894000 const -894000
scoreboard players set -893 const -893
scoreboard players set -893000 const -893000
scoreboard players set -892 const -892
scoreboard players set -892000 const -892000
scoreboard players set -891 const -891
scoreboard players set -891000 const -891000
scoreboard players set -890 const -890
scoreboard players set -890000 const -890000
scoreboard players set -889 const -889
scoreboard players set -889000 const -889000
scoreboard players set -888 const -888
scoreboard players set -888000 const -888000
scoreboard players set -887 const -887
scoreboard players set -887000 const -887000
scoreboard players set -886 const -886
scoreboard players set -886000 const -886000
scoreboard players set -885 const -885
scoreboard players set -885000 const -885000
scoreboard players set -884 const -884
scoreboard players set -884000 const -884000
scoreboard players set -883 const -883
scoreboard players set -883000 const -883000
scoreboard players set -882 const -882
scoreboard players set -882000 const -882000
scoreboard players set -881 const -881
scoreboard players set -881000 const -881000
scoreboard players set -880 const -880
scoreboard players set -880000 const -880000
scoreboard players set -879 const -879
scoreboard players set -879000 const -879000
scoreboard players set -878 const -878
scoreboard players set -878000 const -878000
scoreboard players set -877 const -877
scoreboard players set -877000 const -877000
scoreboard players set -876 const -876
scoreboard players set -876000 const -876000
scoreboard players set -875 const -875
scoreboard players set -875000 const -875000
scoreboard players set -874 const -874
scoreboard players set -874000 const -874000
scoreboard players set -873 const -873
scoreboard players set -873000 const -873000
scoreboard players set -872 const -872
scoreboard players set -872000 const -872000
scoreboard players set -871 const -871
scoreboard players set -871000 const -871000
scoreboard players set -870 const -870
scoreboard players set -870000 const -870000
scoreboard players set -869 const -869
scoreboard players set -869000 const -869000
scoreboard players set -868 const -868
scoreboard players set -868000 const -868000
scoreboard players set -867 const -867
scoreboard players set -867000 const -867000
scoreboard players set -866 const -866
scoreboard players set -866000 const -866000
scoreboard players set -865 const -865
scoreboard players set -865000 const -865000
scoreboard players set -864 const -864
scoreboard players set -864000 const -864000
scoreboard players set -863 const -863
scoreboard players set -863000 const -863000
scoreboard players set -862 const -862
scoreboard players set -862000 const -862000
scoreboard players set -861 const -861
scoreboard players set -861000 const -861000
scoreboard players set -860 const -860
scoreboard players set -860000 const -860000
scoreboard players set -859 const -859
scoreboard players set -859000 const -859000
scoreboard players set -858 const -858
scoreboard players set -858000 const -858000
scoreboard players set -857 const -857
scoreboard players set -857000 const -857000
scoreboard players set -856 const -856
scoreboard players set -856000 const -856000
scoreboard players set -855 const -855
scoreboard players set -855000 const -855000
scoreboard players set -854 const -854
scoreboard players set -854000 const -854000
scoreboard players set -853 const -853
scoreboard players set -853000 const -853000
scoreboard players set -852 const -852
scoreboard players set -852000 const -852000
scoreboard players set -851 const -851
scoreboard players set -851000 const -851000
scoreboard players set -850 const -850
scoreboard players set -850000 const -850000
scoreboard players set -849 const -849
scoreboard players set -849000 const -849000
scoreboard players set -848 const -848
scoreboard players set -848000 const -848000
scoreboard players set -847 const -847
scoreboard players set -847000 const -847000
scoreboard players set -846 const -846
scoreboard players set -846000 const -846000
scoreboard players set -845 const -845
scoreboard players set -845000 const -845000
scoreboard players set -844 const -844
scoreboard players set -844000 const -844000
scoreboard players set -843 const -843
scoreboard players set -843000 const -843000
scoreboard players set -842 const -842
scoreboard players set -842000 const -842000
scoreboard players set -841 const -841
scoreboard players set -841000 const -841000
scoreboard players set -840 const -840
scoreboard players set -840000 const -840000
scoreboard players set -839 const -839
scoreboard players set -839000 const -839000
scoreboard players set -838 const -838
scoreboard players set -838000 const -838000
scoreboard players set -837 const -837
scoreboard players set -837000 const -837000
scoreboard players set -836 const -836
scoreboard players set -836000 const -836000
scoreboard players set -835 const -835
scoreboard players set -835000 const -835000
scoreboard players set -834 const -834
scoreboard players set -834000 const -834000
scoreboard players set -833 const -833
scoreboard players set -833000 const -833000
scoreboard players set -832 const -832
scoreboard players set -832000 const -832000
scoreboard players set -831 const -831
scoreboard players set -831000 const -831000
scoreboard players set -830 const -830
scoreboard players set -830000 const -830000
scoreboard players set -829 const -829
scoreboard players set -829000 const -829000
scoreboard players set -828 const -828
scoreboard players set -828000 const -828000
scoreboard players set -827 const -827
scoreboard players set -827000 const -827000
scoreboard players set -826 const -826
scoreboard players set -826000 const -826000
scoreboard players set -825 const -825
scoreboard players set -825000 const -825000
scoreboard players set -824 const -824
scoreboard players set -824000 const -824000
scoreboard players set -823 const -823
scoreboard players set -823000 const -823000
scoreboard players set -822 const -822
scoreboard players set -822000 const -822000
scoreboard players set -821 const -821
scoreboard players set -821000 const -821000
scoreboard players set -820 const -820
scoreboard players set -820000 const -820000
scoreboard players set -819 const -819
scoreboard players set -819000 const -819000
scoreboard players set -818 const -818
scoreboard players set -818000 const -818000
scoreboard players set -817 const -817
scoreboard players set -817000 const -817000
scoreboard players set -816 const -816
scoreboard players set -816000 const -816000
scoreboard players set -815 const -815
scoreboard players set -815000 const -815000
scoreboard players set -814 const -814
scoreboard players set -814000 const -814000
scoreboard players set -813 const -813
scoreboard players set -813000 const -813000
scoreboard players set -812 const -812
scoreboard players set -812000 const -812000
scoreboard players set -811 const -811
scoreboard players set -811000 const -811000
scoreboard players set -810 const -810
scoreboard players set -810000 const -810000
scoreboard players set -809 const -809
scoreboard players set -809000 const -809000
scoreboard players set -808 const -808
scoreboard players set -808000 const -808000
scoreboard players set -807 const -807
scoreboard players set -807000 const -807000
scoreboard players set -806 const -806
scoreboard players set -806000 const -806000
scoreboard players set -805 const -805
scoreboard players set -805000 const -805000
scoreboard players set -804 const -804
scoreboard players set -804000 const -804000
scoreboard players set -803 const -803
scoreboard players set -803000 const -803000
scoreboard players set -802 const -802
scoreboard players set -802000 const -802000
scoreboard players set -801 const -801
scoreboard players set -801000 const -801000
scoreboard players set -800 const -800
scoreboard players set -800000 const -800000
scoreboard players set -799 const -799
scoreboard players set -799000 const -799000
scoreboard players set -798 const -798
scoreboard players set -798000 const -798000
scoreboard players set -797 const -797
scoreboard players set -797000 const -797000
scoreboard players set -796 const -796
scoreboard players set -796000 const -796000
scoreboard players set -795 const -795
scoreboard players set -795000 const -795000
scoreboard players set -794 const -794
scoreboard players set -794000 const -794000
scoreboard players set -793 const -793
scoreboard players set -793000 const -793000
scoreboard players set -792 const -792
scoreboard players set -792000 const -792000
scoreboard players set -791 const -791
scoreboard players set -791000 const -791000
scoreboard players set -790 const -790
scoreboard players set -790000 const -790000
scoreboard players set -789 const -789
scoreboard players set -789000 const -789000
scoreboard players set -788 const -788
scoreboard players set -788000 const -788000
scoreboard players set -787 const -787
scoreboard players set -787000 const -787000
scoreboard players set -786 const -786
scoreboard players set -786000 const -786000
scoreboard players set -785 const -785
scoreboard players set -785000 const -785000
scoreboard players set -784 const -784
scoreboard players set -784000 const -784000
scoreboard players set -783 const -783
scoreboard players set -783000 const -783000
scoreboard players set -782 const -782
scoreboard players set -782000 const -782000
scoreboard players set -781 const -781
scoreboard players set -781000 const -781000
scoreboard players set -780 const -780
scoreboard players set -780000 const -780000
scoreboard players set -779 const -779
scoreboard players set -779000 const -779000
scoreboard players set -778 const -778
scoreboard players set -778000 const -778000
scoreboard players set -777 const -777
scoreboard players set -777000 const -777000
scoreboard players set -776 const -776
scoreboard players set -776000 const -776000
scoreboard players set -775 const -775
scoreboard players set -775000 const -775000
scoreboard players set -774 const -774
scoreboard players set -774000 const -774000
scoreboard players set -773 const -773
scoreboard players set -773000 const -773000
scoreboard players set -772 const -772
scoreboard players set -772000 const -772000
scoreboard players set -771 const -771
scoreboard players set -771000 const -771000
scoreboard players set -770 const -770
scoreboard players set -770000 const -770000
scoreboard players set -769 const -769
scoreboard players set -769000 const -769000
scoreboard players set -768 const -768
scoreboard players set -768000 const -768000
scoreboard players set -767 const -767
scoreboard players set -767000 const -767000
scoreboard players set -766 const -766
scoreboard players set -766000 const -766000
scoreboard players set -765 const -765
scoreboard players set -765000 const -765000
scoreboard players set -764 const -764
scoreboard players set -764000 const -764000
scoreboard players set -763 const -763
scoreboard players set -763000 const -763000
scoreboard players set -762 const -762
scoreboard players set -762000 const -762000
scoreboard players set -761 const -761
scoreboard players set -761000 const -761000
scoreboard players set -760 const -760
scoreboard players set -760000 const -760000
scoreboard players set -759 const -759
scoreboard players set -759000 const -759000
scoreboard players set -758 const -758
scoreboard players set -758000 const -758000
scoreboard players set -757 const -757
scoreboard players set -757000 const -757000
scoreboard players set -756 const -756
scoreboard players set -756000 const -756000
scoreboard players set -755 const -755
scoreboard players set -755000 const -755000
scoreboard players set -754 const -754
scoreboard players set -754000 const -754000
scoreboard players set -753 const -753
scoreboard players set -753000 const -753000
scoreboard players set -752 const -752
scoreboard players set -752000 const -752000
scoreboard players set -751 const -751
scoreboard players set -751000 const -751000
scoreboard players set -750 const -750
scoreboard players set -750000 const -750000
scoreboard players set -749 const -749
scoreboard players set -749000 const -749000
scoreboard players set -748 const -748
scoreboard players set -748000 const -748000
scoreboard players set -747 const -747
scoreboard players set -747000 const -747000
scoreboard players set -746 const -746
scoreboard players set -746000 const -746000
scoreboard players set -745 const -745
scoreboard players set -745000 const -745000
scoreboard players set -744 const -744
scoreboard players set -744000 const -744000
scoreboard players set -743 const -743
scoreboard players set -743000 const -743000
scoreboard players set -742 const -742
scoreboard players set -742000 const -742000
scoreboard players set -741 const -741
scoreboard players set -741000 const -741000
scoreboard players set -740 const -740
scoreboard players set -740000 const -740000
scoreboard players set -739 const -739
scoreboard players set -739000 const -739000
scoreboard players set -738 const -738
scoreboard players set -738000 const -738000
scoreboard players set -737 const -737
scoreboard players set -737000 const -737000
scoreboard players set -736 const -736
scoreboard players set -736000 const -736000
scoreboard players set -735 const -735
scoreboard players set -735000 const -735000
scoreboard players set -734 const -734
scoreboard players set -734000 const -734000
scoreboard players set -733 const -733
scoreboard players set -733000 const -733000
scoreboard players set -732 const -732
scoreboard players set -732000 const -732000
scoreboard players set -731 const -731
scoreboard players set -731000 const -731000
scoreboard players set -730 const -730
scoreboard players set -730000 const -730000
scoreboard players set -729 const -729
scoreboard players set -729000 const -729000
scoreboard players set -728 const -728
scoreboard players set -728000 const -728000
scoreboard players set -727 const -727
scoreboard players set -727000 const -727000
scoreboard players set -726 const -726
scoreboard players set -726000 const -726000
scoreboard players set -725 const -725
scoreboard players set -725000 const -725000
scoreboard players set -724 const -724
scoreboard players set -724000 const -724000
scoreboard players set -723 const -723
scoreboard players set -723000 const -723000
scoreboard players set -722 const -722
scoreboard players set -722000 const -722000
scoreboard players set -721 const -721
scoreboard players set -721000 const -721000
scoreboard players set -720 const -720
scoreboard players set -720000 const -720000
scoreboard players set -719 const -719
scoreboard players set -719000 const -719000
scoreboard players set -718 const -718
scoreboard players set -718000 const -718000
scoreboard players set -717 const -717
scoreboard players set -717000 const -717000
scoreboard players set -716 const -716
scoreboard players set -716000 const -716000
scoreboard players set -715 const -715
scoreboard players set -715000 const -715000
scoreboard players set -714 const -714
scoreboard players set -714000 const -714000
scoreboard players set -713 const -713
scoreboard players set -713000 const -713000
scoreboard players set -712 const -712
scoreboard players set -712000 const -712000
scoreboard players set -711 const -711
scoreboard players set -711000 const -711000
scoreboard players set -710 const -710
scoreboard players set -710000 const -710000
scoreboard players set -709 const -709
scoreboard players set -709000 const -709000
scoreboard players set -708 const -708
scoreboard players set -708000 const -708000
scoreboard players set -707 const -707
scoreboard players set -707000 const -707000
scoreboard players set -706 const -706
scoreboard players set -706000 const -706000
scoreboard players set -705 const -705
scoreboard players set -705000 const -705000
scoreboard players set -704 const -704
scoreboard players set -704000 const -704000
scoreboard players set -703 const -703
scoreboard players set -703000 const -703000
scoreboard players set -702 const -702
scoreboard players set -702000 const -702000
scoreboard players set -701 const -701
scoreboard players set -701000 const -701000
scoreboard players set -700 const -700
scoreboard players set -700000 const -700000
scoreboard players set -699 const -699
scoreboard players set -699000 const -699000
scoreboard players set -698 const -698
scoreboard players set -698000 const -698000
scoreboard players set -697 const -697
scoreboard players set -697000 const -697000
scoreboard players set -696 const -696
scoreboard players set -696000 const -696000
scoreboard players set -695 const -695
scoreboard players set -695000 const -695000
scoreboard players set -694 const -694
scoreboard players set -694000 const -694000
scoreboard players set -693 const -693
scoreboard players set -693000 const -693000
scoreboard players set -692 const -692
scoreboard players set -692000 const -692000
scoreboard players set -691 const -691
scoreboard players set -691000 const -691000
scoreboard players set -690 const -690
scoreboard players set -690000 const -690000
scoreboard players set -689 const -689
scoreboard players set -689000 const -689000
scoreboard players set -688 const -688
scoreboard players set -688000 const -688000
scoreboard players set -687 const -687
scoreboard players set -687000 const -687000
scoreboard players set -686 const -686
scoreboard players set -686000 const -686000
scoreboard players set -685 const -685
scoreboard players set -685000 const -685000
scoreboard players set -684 const -684
scoreboard players set -684000 const -684000
scoreboard players set -683 const -683
scoreboard players set -683000 const -683000
scoreboard players set -682 const -682
scoreboard players set -682000 const -682000
scoreboard players set -681 const -681
scoreboard players set -681000 const -681000
scoreboard players set -680 const -680
scoreboard players set -680000 const -680000
scoreboard players set -679 const -679
scoreboard players set -679000 const -679000
scoreboard players set -678 const -678
scoreboard players set -678000 const -678000
scoreboard players set -677 const -677
scoreboard players set -677000 const -677000
scoreboard players set -676 const -676
scoreboard players set -676000 const -676000
scoreboard players set -675 const -675
scoreboard players set -675000 const -675000
scoreboard players set -674 const -674
scoreboard players set -674000 const -674000
scoreboard players set -673 const -673
scoreboard players set -673000 const -673000
scoreboard players set -672 const -672
scoreboard players set -672000 const -672000
scoreboard players set -671 const -671
scoreboard players set -671000 const -671000
scoreboard players set -670 const -670
scoreboard players set -670000 const -670000
scoreboard players set -669 const -669
scoreboard players set -669000 const -669000
scoreboard players set -668 const -668
scoreboard players set -668000 const -668000
scoreboard players set -667 const -667
scoreboard players set -667000 const -667000
scoreboard players set -666 const -666
scoreboard players set -666000 const -666000
scoreboard players set -665 const -665
scoreboard players set -665000 const -665000
scoreboard players set -664 const -664
scoreboard players set -664000 const -664000
scoreboard players set -663 const -663
scoreboard players set -663000 const -663000
scoreboard players set -662 const -662
scoreboard players set -662000 const -662000
scoreboard players set -661 const -661
scoreboard players set -661000 const -661000
scoreboard players set -660 const -660
scoreboard players set -660000 const -660000
scoreboard players set -659 const -659
scoreboard players set -659000 const -659000
scoreboard players set -658 const -658
scoreboard players set -658000 const -658000
scoreboard players set -657 const -657
scoreboard players set -657000 const -657000
scoreboard players set -656 const -656
scoreboard players set -656000 const -656000
scoreboard players set -655 const -655
scoreboard players set -655000 const -655000
scoreboard players set -654 const -654
scoreboard players set -654000 const -654000
scoreboard players set -653 const -653
scoreboard players set -653000 const -653000
scoreboard players set -652 const -652
scoreboard players set -652000 const -652000
scoreboard players set -651 const -651
scoreboard players set -651000 const -651000
scoreboard players set -650 const -650
scoreboard players set -650000 const -650000
scoreboard players set -649 const -649
scoreboard players set -649000 const -649000
scoreboard players set -648 const -648
scoreboard players set -648000 const -648000
scoreboard players set -647 const -647
scoreboard players set -647000 const -647000
scoreboard players set -646 const -646
scoreboard players set -646000 const -646000
scoreboard players set -645 const -645
scoreboard players set -645000 const -645000
scoreboard players set -644 const -644
scoreboard players set -644000 const -644000
scoreboard players set -643 const -643
scoreboard players set -643000 const -643000
scoreboard players set -642 const -642
scoreboard players set -642000 const -642000
scoreboard players set -641 const -641
scoreboard players set -641000 const -641000
scoreboard players set -640 const -640
scoreboard players set -640000 const -640000
scoreboard players set -639 const -639
scoreboard players set -639000 const -639000
scoreboard players set -638 const -638
scoreboard players set -638000 const -638000
scoreboard players set -637 const -637
scoreboard players set -637000 const -637000
scoreboard players set -636 const -636
scoreboard players set -636000 const -636000
scoreboard players set -635 const -635
scoreboard players set -635000 const -635000
scoreboard players set -634 const -634
scoreboard players set -634000 const -634000
scoreboard players set -633 const -633
scoreboard players set -633000 const -633000
scoreboard players set -632 const -632
scoreboard players set -632000 const -632000
scoreboard players set -631 const -631
scoreboard players set -631000 const -631000
scoreboard players set -630 const -630
scoreboard players set -630000 const -630000
scoreboard players set -629 const -629
scoreboard players set -629000 const -629000
scoreboard players set -628 const -628
scoreboard players set -628000 const -628000
scoreboard players set -627 const -627
scoreboard players set -627000 const -627000
scoreboard players set -626 const -626
scoreboard players set -626000 const -626000
scoreboard players set -625 const -625
scoreboard players set -625000 const -625000
scoreboard players set -624 const -624
scoreboard players set -624000 const -624000
scoreboard players set -623 const -623
scoreboard players set -623000 const -623000
scoreboard players set -622 const -622
scoreboard players set -622000 const -622000
scoreboard players set -621 const -621
scoreboard players set -621000 const -621000
scoreboard players set -620 const -620
scoreboard players set -620000 const -620000
scoreboard players set -619 const -619
scoreboard players set -619000 const -619000
scoreboard players set -618 const -618
scoreboard players set -618000 const -618000
scoreboard players set -617 const -617
scoreboard players set -617000 const -617000
scoreboard players set -616 const -616
scoreboard players set -616000 const -616000
scoreboard players set -615 const -615
scoreboard players set -615000 const -615000
scoreboard players set -614 const -614
scoreboard players set -614000 const -614000
scoreboard players set -613 const -613
scoreboard players set -613000 const -613000
scoreboard players set -612 const -612
scoreboard players set -612000 const -612000
scoreboard players set -611 const -611
scoreboard players set -611000 const -611000
scoreboard players set -610 const -610
scoreboard players set -610000 const -610000
scoreboard players set -609 const -609
scoreboard players set -609000 const -609000
scoreboard players set -608 const -608
scoreboard players set -608000 const -608000
scoreboard players set -607 const -607
scoreboard players set -607000 const -607000
scoreboard players set -606 const -606
scoreboard players set -606000 const -606000
scoreboard players set -605 const -605
scoreboard players set -605000 const -605000
scoreboard players set -604 const -604
scoreboard players set -604000 const -604000
scoreboard players set -603 const -603
scoreboard players set -603000 const -603000
scoreboard players set -602 const -602
scoreboard players set -602000 const -602000
scoreboard players set -601 const -601
scoreboard players set -601000 const -601000
scoreboard players set -600 const -600
scoreboard players set -600000 const -600000
scoreboard players set -599 const -599
scoreboard players set -599000 const -599000
scoreboard players set -598 const -598
scoreboard players set -598000 const -598000
scoreboard players set -597 const -597
scoreboard players set -597000 const -597000
scoreboard players set -596 const -596
scoreboard players set -596000 const -596000
scoreboard players set -595 const -595
scoreboard players set -595000 const -595000
scoreboard players set -594 const -594
scoreboard players set -594000 const -594000
scoreboard players set -593 const -593
scoreboard players set -593000 const -593000
scoreboard players set -592 const -592
scoreboard players set -592000 const -592000
scoreboard players set -591 const -591
scoreboard players set -591000 const -591000
scoreboard players set -590 const -590
scoreboard players set -590000 const -590000
scoreboard players set -589 const -589
scoreboard players set -589000 const -589000
scoreboard players set -588 const -588
scoreboard players set -588000 const -588000
scoreboard players set -587 const -587
scoreboard players set -587000 const -587000
scoreboard players set -586 const -586
scoreboard players set -586000 const -586000
scoreboard players set -585 const -585
scoreboard players set -585000 const -585000
scoreboard players set -584 const -584
scoreboard players set -584000 const -584000
scoreboard players set -583 const -583
scoreboard players set -583000 const -583000
scoreboard players set -582 const -582
scoreboard players set -582000 const -582000
scoreboard players set -581 const -581
scoreboard players set -581000 const -581000
scoreboard players set -580 const -580
scoreboard players set -580000 const -580000
scoreboard players set -579 const -579
scoreboard players set -579000 const -579000
scoreboard players set -578 const -578
scoreboard players set -578000 const -578000
scoreboard players set -577 const -577
scoreboard players set -577000 const -577000
scoreboard players set -576 const -576
scoreboard players set -576000 const -576000
scoreboard players set -575 const -575
scoreboard players set -575000 const -575000
scoreboard players set -574 const -574
scoreboard players set -574000 const -574000
scoreboard players set -573 const -573
scoreboard players set -573000 const -573000
scoreboard players set -572 const -572
scoreboard players set -572000 const -572000
scoreboard players set -571 const -571
scoreboard players set -571000 const -571000
scoreboard players set -570 const -570
scoreboard players set -570000 const -570000
scoreboard players set -569 const -569
scoreboard players set -569000 const -569000
scoreboard players set -568 const -568
scoreboard players set -568000 const -568000
scoreboard players set -567 const -567
scoreboard players set -567000 const -567000
scoreboard players set -566 const -566
scoreboard players set -566000 const -566000
scoreboard players set -565 const -565
scoreboard players set -565000 const -565000
scoreboard players set -564 const -564
scoreboard players set -564000 const -564000
scoreboard players set -563 const -563
scoreboard players set -563000 const -563000
scoreboard players set -562 const -562
scoreboard players set -562000 const -562000
scoreboard players set -561 const -561
scoreboard players set -561000 const -561000
scoreboard players set -560 const -560
scoreboard players set -560000 const -560000
scoreboard players set -559 const -559
scoreboard players set -559000 const -559000
scoreboard players set -558 const -558
scoreboard players set -558000 const -558000
scoreboard players set -557 const -557
scoreboard players set -557000 const -557000
scoreboard players set -556 const -556
scoreboard players set -556000 const -556000
scoreboard players set -555 const -555
scoreboard players set -555000 const -555000
scoreboard players set -554 const -554
scoreboard players set -554000 const -554000
scoreboard players set -553 const -553
scoreboard players set -553000 const -553000
scoreboard players set -552 const -552
scoreboard players set -552000 const -552000
scoreboard players set -551 const -551
scoreboard players set -551000 const -551000
scoreboard players set -550 const -550
scoreboard players set -550000 const -550000
scoreboard players set -549 const -549
scoreboard players set -549000 const -549000
scoreboard players set -548 const -548
scoreboard players set -548000 const -548000
scoreboard players set -547 const -547
scoreboard players set -547000 const -547000
scoreboard players set -546 const -546
scoreboard players set -546000 const -546000
scoreboard players set -545 const -545
scoreboard players set -545000 const -545000
scoreboard players set -544 const -544
scoreboard players set -544000 const -544000
scoreboard players set -543 const -543
scoreboard players set -543000 const -543000
scoreboard players set -542 const -542
scoreboard players set -542000 const -542000
scoreboard players set -541 const -541
scoreboard players set -541000 const -541000
scoreboard players set -540 const -540
scoreboard players set -540000 const -540000
scoreboard players set -539 const -539
scoreboard players set -539000 const -539000
scoreboard players set -538 const -538
scoreboard players set -538000 const -538000
scoreboard players set -537 const -537
scoreboard players set -537000 const -537000
scoreboard players set -536 const -536
scoreboard players set -536000 const -536000
scoreboard players set -535 const -535
scoreboard players set -535000 const -535000
scoreboard players set -534 const -534
scoreboard players set -534000 const -534000
scoreboard players set -533 const -533
scoreboard players set -533000 const -533000
scoreboard players set -532 const -532
scoreboard players set -532000 const -532000
scoreboard players set -531 const -531
scoreboard players set -531000 const -531000
scoreboard players set -530 const -530
scoreboard players set -530000 const -530000
scoreboard players set -529 const -529
scoreboard players set -529000 const -529000
scoreboard players set -528 const -528
scoreboard players set -528000 const -528000
scoreboard players set -527 const -527
scoreboard players set -527000 const -527000
scoreboard players set -526 const -526
scoreboard players set -526000 const -526000
scoreboard players set -525 const -525
scoreboard players set -525000 const -525000
scoreboard players set -524 const -524
scoreboard players set -524000 const -524000
scoreboard players set -523 const -523
scoreboard players set -523000 const -523000
scoreboard players set -522 const -522
scoreboard players set -522000 const -522000
scoreboard players set -521 const -521
scoreboard players set -521000 const -521000
scoreboard players set -520 const -520
scoreboard players set -520000 const -520000
scoreboard players set -519 const -519
scoreboard players set -519000 const -519000
scoreboard players set -518 const -518
scoreboard players set -518000 const -518000
scoreboard players set -517 const -517
scoreboard players set -517000 const -517000
scoreboard players set -516 const -516
scoreboard players set -516000 const -516000
scoreboard players set -515 const -515
scoreboard players set -515000 const -515000
scoreboard players set -514 const -514
scoreboard players set -514000 const -514000
scoreboard players set -513 const -513
scoreboard players set -513000 const -513000
scoreboard players set -512 const -512
scoreboard players set -512000 const -512000
scoreboard players set -511 const -511
scoreboard players set -511000 const -511000
scoreboard players set -510 const -510
scoreboard players set -510000 const -510000
scoreboard players set -509 const -509
scoreboard players set -509000 const -509000
scoreboard players set -508 const -508
scoreboard players set -508000 const -508000
scoreboard players set -507 const -507
scoreboard players set -507000 const -507000
scoreboard players set -506 const -506
scoreboard players set -506000 const -506000
scoreboard players set -505 const -505
scoreboard players set -505000 const -505000
scoreboard players set -504 const -504
scoreboard players set -504000 const -504000
scoreboard players set -503 const -503
scoreboard players set -503000 const -503000
scoreboard players set -502 const -502
scoreboard players set -502000 const -502000
scoreboard players set -501 const -501
scoreboard players set -501000 const -501000
scoreboard players set -500 const -500
scoreboard players set -500000 const -500000
scoreboard players set -499 const -499
scoreboard players set -499000 const -499000
scoreboard players set -498 const -498
scoreboard players set -498000 const -498000
scoreboard players set -497 const -497
scoreboard players set -497000 const -497000
scoreboard players set -496 const -496
scoreboard players set -496000 const -496000
scoreboard players set -495 const -495
scoreboard players set -495000 const -495000
scoreboard players set -494 const -494
scoreboard players set -494000 const -494000
scoreboard players set -493 const -493
scoreboard players set -493000 const -493000
scoreboard players set -492 const -492
scoreboard players set -492000 const -492000
scoreboard players set -491 const -491
scoreboard players set -491000 const -491000
scoreboard players set -490 const -490
scoreboard players set -490000 const -490000
scoreboard players set -489 const -489
scoreboard players set -489000 const -489000
scoreboard players set -488 const -488
scoreboard players set -488000 const -488000
scoreboard players set -487 const -487
scoreboard players set -487000 const -487000
scoreboard players set -486 const -486
scoreboard players set -486000 const -486000
scoreboard players set -485 const -485
scoreboard players set -485000 const -485000
scoreboard players set -484 const -484
scoreboard players set -484000 const -484000
scoreboard players set -483 const -483
scoreboard players set -483000 const -483000
scoreboard players set -482 const -482
scoreboard players set -482000 const -482000
scoreboard players set -481 const -481
scoreboard players set -481000 const -481000
scoreboard players set -480 const -480
scoreboard players set -480000 const -480000
scoreboard players set -479 const -479
scoreboard players set -479000 const -479000
scoreboard players set -478 const -478
scoreboard players set -478000 const -478000
scoreboard players set -477 const -477
scoreboard players set -477000 const -477000
scoreboard players set -476 const -476
scoreboard players set -476000 const -476000
scoreboard players set -475 const -475
scoreboard players set -475000 const -475000
scoreboard players set -474 const -474
scoreboard players set -474000 const -474000
scoreboard players set -473 const -473
scoreboard players set -473000 const -473000
scoreboard players set -472 const -472
scoreboard players set -472000 const -472000
scoreboard players set -471 const -471
scoreboard players set -471000 const -471000
scoreboard players set -470 const -470
scoreboard players set -470000 const -470000
scoreboard players set -469 const -469
scoreboard players set -469000 const -469000
scoreboard players set -468 const -468
scoreboard players set -468000 const -468000
scoreboard players set -467 const -467
scoreboard players set -467000 const -467000
scoreboard players set -466 const -466
scoreboard players set -466000 const -466000
scoreboard players set -465 const -465
scoreboard players set -465000 const -465000
scoreboard players set -464 const -464
scoreboard players set -464000 const -464000
scoreboard players set -463 const -463
scoreboard players set -463000 const -463000
scoreboard players set -462 const -462
scoreboard players set -462000 const -462000
scoreboard players set -461 const -461
scoreboard players set -461000 const -461000
scoreboard players set -460 const -460
scoreboard players set -460000 const -460000
scoreboard players set -459 const -459
scoreboard players set -459000 const -459000
scoreboard players set -458 const -458
scoreboard players set -458000 const -458000
scoreboard players set -457 const -457
scoreboard players set -457000 const -457000
scoreboard players set -456 const -456
scoreboard players set -456000 const -456000
scoreboard players set -455 const -455
scoreboard players set -455000 const -455000
scoreboard players set -454 const -454
scoreboard players set -454000 const -454000
scoreboard players set -453 const -453
scoreboard players set -453000 const -453000
scoreboard players set -452 const -452
scoreboard players set -452000 const -452000
scoreboard players set -451 const -451
scoreboard players set -451000 const -451000
scoreboard players set -450 const -450
scoreboard players set -450000 const -450000
scoreboard players set -449 const -449
scoreboard players set -449000 const -449000
scoreboard players set -448 const -448
scoreboard players set -448000 const -448000
scoreboard players set -447 const -447
scoreboard players set -447000 const -447000
scoreboard players set -446 const -446
scoreboard players set -446000 const -446000
scoreboard players set -445 const -445
scoreboard players set -445000 const -445000
scoreboard players set -444 const -444
scoreboard players set -444000 const -444000
scoreboard players set -443 const -443
scoreboard players set -443000 const -443000
scoreboard players set -442 const -442
scoreboard players set -442000 const -442000
scoreboard players set -441 const -441
scoreboard players set -441000 const -441000
scoreboard players set -440 const -440
scoreboard players set -440000 const -440000
scoreboard players set -439 const -439
scoreboard players set -439000 const -439000
scoreboard players set -438 const -438
scoreboard players set -438000 const -438000
scoreboard players set -437 const -437
scoreboard players set -437000 const -437000
scoreboard players set -436 const -436
scoreboard players set -436000 const -436000
scoreboard players set -435 const -435
scoreboard players set -435000 const -435000
scoreboard players set -434 const -434
scoreboard players set -434000 const -434000
scoreboard players set -433 const -433
scoreboard players set -433000 const -433000
scoreboard players set -432 const -432
scoreboard players set -432000 const -432000
scoreboard players set -431 const -431
scoreboard players set -431000 const -431000
scoreboard players set -430 const -430
scoreboard players set -430000 const -430000
scoreboard players set -429 const -429
scoreboard players set -429000 const -429000
scoreboard players set -428 const -428
scoreboard players set -428000 const -428000
scoreboard players set -427 const -427
scoreboard players set -427000 const -427000
scoreboard players set -426 const -426
scoreboard players set -426000 const -426000
scoreboard players set -425 const -425
scoreboard players set -425000 const -425000
scoreboard players set -424 const -424
scoreboard players set -424000 const -424000
scoreboard players set -423 const -423
scoreboard players set -423000 const -423000
scoreboard players set -422 const -422
scoreboard players set -422000 const -422000
scoreboard players set -421 const -421
scoreboard players set -421000 const -421000
scoreboard players set -420 const -420
scoreboard players set -420000 const -420000
scoreboard players set -419 const -419
scoreboard players set -419000 const -419000
scoreboard players set -418 const -418
scoreboard players set -418000 const -418000
scoreboard players set -417 const -417
scoreboard players set -417000 const -417000
scoreboard players set -416 const -416
scoreboard players set -416000 const -416000
scoreboard players set -415 const -415
scoreboard players set -415000 const -415000
scoreboard players set -414 const -414
scoreboard players set -414000 const -414000
scoreboard players set -413 const -413
scoreboard players set -413000 const -413000
scoreboard players set -412 const -412
scoreboard players set -412000 const -412000
scoreboard players set -411 const -411
scoreboard players set -411000 const -411000
scoreboard players set -410 const -410
scoreboard players set -410000 const -410000
scoreboard players set -409 const -409
scoreboard players set -409000 const -409000
scoreboard players set -408 const -408
scoreboard players set -408000 const -408000
scoreboard players set -407 const -407
scoreboard players set -407000 const -407000
scoreboard players set -406 const -406
scoreboard players set -406000 const -406000
scoreboard players set -405 const -405
scoreboard players set -405000 const -405000
scoreboard players set -404 const -404
scoreboard players set -404000 const -404000
scoreboard players set -403 const -403
scoreboard players set -403000 const -403000
scoreboard players set -402 const -402
scoreboard players set -402000 const -402000
scoreboard players set -401 const -401
scoreboard players set -401000 const -401000
scoreboard players set -400 const -400
scoreboard players set -400000 const -400000
scoreboard players set -399 const -399
scoreboard players set -399000 const -399000
scoreboard players set -398 const -398
scoreboard players set -398000 const -398000
scoreboard players set -397 const -397
scoreboard players set -397000 const -397000
scoreboard players set -396 const -396
scoreboard players set -396000 const -396000
scoreboard players set -395 const -395
scoreboard players set -395000 const -395000
scoreboard players set -394 const -394
scoreboard players set -394000 const -394000
scoreboard players set -393 const -393
scoreboard players set -393000 const -393000
scoreboard players set -392 const -392
scoreboard players set -392000 const -392000
scoreboard players set -391 const -391
scoreboard players set -391000 const -391000
scoreboard players set -390 const -390
scoreboard players set -390000 const -390000
scoreboard players set -389 const -389
scoreboard players set -389000 const -389000
scoreboard players set -388 const -388
scoreboard players set -388000 const -388000
scoreboard players set -387 const -387
scoreboard players set -387000 const -387000
scoreboard players set -386 const -386
scoreboard players set -386000 const -386000
scoreboard players set -385 const -385
scoreboard players set -385000 const -385000
scoreboard players set -384 const -384
scoreboard players set -384000 const -384000
scoreboard players set -383 const -383
scoreboard players set -383000 const -383000
scoreboard players set -382 const -382
scoreboard players set -382000 const -382000
scoreboard players set -381 const -381
scoreboard players set -381000 const -381000
scoreboard players set -380 const -380
scoreboard players set -380000 const -380000
scoreboard players set -379 const -379
scoreboard players set -379000 const -379000
scoreboard players set -378 const -378
scoreboard players set -378000 const -378000
scoreboard players set -377 const -377
scoreboard players set -377000 const -377000
scoreboard players set -376 const -376
scoreboard players set -376000 const -376000
scoreboard players set -375 const -375
scoreboard players set -375000 const -375000
scoreboard players set -374 const -374
scoreboard players set -374000 const -374000
scoreboard players set -373 const -373
scoreboard players set -373000 const -373000
scoreboard players set -372 const -372
scoreboard players set -372000 const -372000
scoreboard players set -371 const -371
scoreboard players set -371000 const -371000
scoreboard players set -370 const -370
scoreboard players set -370000 const -370000
scoreboard players set -369 const -369
scoreboard players set -369000 const -369000
scoreboard players set -368 const -368
scoreboard players set -368000 const -368000
scoreboard players set -367 const -367
scoreboard players set -367000 const -367000
scoreboard players set -366 const -366
scoreboard players set -366000 const -366000
scoreboard players set -365 const -365
scoreboard players set -365000 const -365000
scoreboard players set -364 const -364
scoreboard players set -364000 const -364000
scoreboard players set -363 const -363
scoreboard players set -363000 const -363000
scoreboard players set -362 const -362
scoreboard players set -362000 const -362000
scoreboard players set -361 const -361
scoreboard players set -361000 const -361000
scoreboard players set -360 const -360
scoreboard players set -360000 const -360000
scoreboard players set -359 const -359
scoreboard players set -359000 const -359000
scoreboard players set -358 const -358
scoreboard players set -358000 const -358000
scoreboard players set -357 const -357
scoreboard players set -357000 const -357000
scoreboard players set -356 const -356
scoreboard players set -356000 const -356000
scoreboard players set -355 const -355
scoreboard players set -355000 const -355000
scoreboard players set -354 const -354
scoreboard players set -354000 const -354000
scoreboard players set -353 const -353
scoreboard players set -353000 const -353000
scoreboard players set -352 const -352
scoreboard players set -352000 const -352000
scoreboard players set -351 const -351
scoreboard players set -351000 const -351000
scoreboard players set -350 const -350
scoreboard players set -350000 const -350000
scoreboard players set -349 const -349
scoreboard players set -349000 const -349000
scoreboard players set -348 const -348
scoreboard players set -348000 const -348000
scoreboard players set -347 const -347
scoreboard players set -347000 const -347000
scoreboard players set -346 const -346
scoreboard players set -346000 const -346000
scoreboard players set -345 const -345
scoreboard players set -345000 const -345000
scoreboard players set -344 const -344
scoreboard players set -344000 const -344000
scoreboard players set -343 const -343
scoreboard players set -343000 const -343000
scoreboard players set -342 const -342
scoreboard players set -342000 const -342000
scoreboard players set -341 const -341
scoreboard players set -341000 const -341000
scoreboard players set -340 const -340
scoreboard players set -340000 const -340000
scoreboard players set -339 const -339
scoreboard players set -339000 const -339000
scoreboard players set -338 const -338
scoreboard players set -338000 const -338000
scoreboard players set -337 const -337
scoreboard players set -337000 const -337000
scoreboard players set -336 const -336
scoreboard players set -336000 const -336000
scoreboard players set -335 const -335
scoreboard players set -335000 const -335000
scoreboard players set -334 const -334
scoreboard players set -334000 const -334000
scoreboard players set -333 const -333
scoreboard players set -333000 const -333000
scoreboard players set -332 const -332
scoreboard players set -332000 const -332000
scoreboard players set -331 const -331
scoreboard players set -331000 const -331000
scoreboard players set -330 const -330
scoreboard players set -330000 const -330000
scoreboard players set -329 const -329
scoreboard players set -329000 const -329000
scoreboard players set -328 const -328
scoreboard players set -328000 const -328000
scoreboard players set -327 const -327
scoreboard players set -327000 const -327000
scoreboard players set -326 const -326
scoreboard players set -326000 const -326000
scoreboard players set -325 const -325
scoreboard players set -325000 const -325000
scoreboard players set -324 const -324
scoreboard players set -324000 const -324000
scoreboard players set -323 const -323
scoreboard players set -323000 const -323000
scoreboard players set -322 const -322
scoreboard players set -322000 const -322000
scoreboard players set -321 const -321
scoreboard players set -321000 const -321000
scoreboard players set -320 const -320
scoreboard players set -320000 const -320000
scoreboard players set -319 const -319
scoreboard players set -319000 const -319000
scoreboard players set -318 const -318
scoreboard players set -318000 const -318000
scoreboard players set -317 const -317
scoreboard players set -317000 const -317000
scoreboard players set -316 const -316
scoreboard players set -316000 const -316000
scoreboard players set -315 const -315
scoreboard players set -315000 const -315000
scoreboard players set -314 const -314
scoreboard players set -314000 const -314000
scoreboard players set -313 const -313
scoreboard players set -313000 const -313000
scoreboard players set -312 const -312
scoreboard players set -312000 const -312000
scoreboard players set -311 const -311
scoreboard players set -311000 const -311000
scoreboard players set -310 const -310
scoreboard players set -310000 const -310000
scoreboard players set -309 const -309
scoreboard players set -309000 const -309000
scoreboard players set -308 const -308
scoreboard players set -308000 const -308000
scoreboard players set -307 const -307
scoreboard players set -307000 const -307000
scoreboard players set -306 const -306
scoreboard players set -306000 const -306000
scoreboard players set -305 const -305
scoreboard players set -305000 const -305000
scoreboard players set -304 const -304
scoreboard players set -304000 const -304000
scoreboard players set -303 const -303
scoreboard players set -303000 const -303000
scoreboard players set -302 const -302
scoreboard players set -302000 const -302000
scoreboard players set -301 const -301
scoreboard players set -301000 const -301000
scoreboard players set -300 const -300
scoreboard players set -300000 const -300000
scoreboard players set -299 const -299
scoreboard players set -299000 const -299000
scoreboard players set -298 const -298
scoreboard players set -298000 const -298000
scoreboard players set -297 const -297
scoreboard players set -297000 const -297000
scoreboard players set -296 const -296
scoreboard players set -296000 const -296000
scoreboard players set -295 const -295
scoreboard players set -295000 const -295000
scoreboard players set -294 const -294
scoreboard players set -294000 const -294000
scoreboard players set -293 const -293
scoreboard players set -293000 const -293000
scoreboard players set -292 const -292
scoreboard players set -292000 const -292000
scoreboard players set -291 const -291
scoreboard players set -291000 const -291000
scoreboard players set -290 const -290
scoreboard players set -290000 const -290000
scoreboard players set -289 const -289
scoreboard players set -289000 const -289000
scoreboard players set -288 const -288
scoreboard players set -288000 const -288000
scoreboard players set -287 const -287
scoreboard players set -287000 const -287000
scoreboard players set -286 const -286
scoreboard players set -286000 const -286000
scoreboard players set -285 const -285
scoreboard players set -285000 const -285000
scoreboard players set -284 const -284
scoreboard players set -284000 const -284000
scoreboard players set -283 const -283
scoreboard players set -283000 const -283000
scoreboard players set -282 const -282
scoreboard players set -282000 const -282000
scoreboard players set -281 const -281
scoreboard players set -281000 const -281000
scoreboard players set -280 const -280
scoreboard players set -280000 const -280000
scoreboard players set -279 const -279
scoreboard players set -279000 const -279000
scoreboard players set -278 const -278
scoreboard players set -278000 const -278000
scoreboard players set -277 const -277
scoreboard players set -277000 const -277000
scoreboard players set -276 const -276
scoreboard players set -276000 const -276000
scoreboard players set -275 const -275
scoreboard players set -275000 const -275000
scoreboard players set -274 const -274
scoreboard players set -274000 const -274000
scoreboard players set -273 const -273
scoreboard players set -273000 const -273000
scoreboard players set -272 const -272
scoreboard players set -272000 const -272000
scoreboard players set -271 const -271
scoreboard players set -271000 const -271000
scoreboard players set -270 const -270
scoreboard players set -270000 const -270000
scoreboard players set -269 const -269
scoreboard players set -269000 const -269000
scoreboard players set -268 const -268
scoreboard players set -268000 const -268000
scoreboard players set -267 const -267
scoreboard players set -267000 const -267000
scoreboard players set -266 const -266
scoreboard players set -266000 const -266000
scoreboard players set -265 const -265
scoreboard players set -265000 const -265000
scoreboard players set -264 const -264
scoreboard players set -264000 const -264000
scoreboard players set -263 const -263
scoreboard players set -263000 const -263000
scoreboard players set -262 const -262
scoreboard players set -262000 const -262000
scoreboard players set -261 const -261
scoreboard players set -261000 const -261000
scoreboard players set -260 const -260
scoreboard players set -260000 const -260000
scoreboard players set -259 const -259
scoreboard players set -259000 const -259000
scoreboard players set -258 const -258
scoreboard players set -258000 const -258000
scoreboard players set -257 const -257
scoreboard players set -257000 const -257000
scoreboard players set -256 const -256
scoreboard players set -256000 const -256000
scoreboard players set -255 const -255
scoreboard players set -255000 const -255000
scoreboard players set -254 const -254
scoreboard players set -254000 const -254000
scoreboard players set -253 const -253
scoreboard players set -253000 const -253000
scoreboard players set -252 const -252
scoreboard players set -252000 const -252000
scoreboard players set -251 const -251
scoreboard players set -251000 const -251000
scoreboard players set -250 const -250
scoreboard players set -250000 const -250000
scoreboard players set -249 const -249
scoreboard players set -249000 const -249000
scoreboard players set -248 const -248
scoreboard players set -248000 const -248000
scoreboard players set -247 const -247
scoreboard players set -247000 const -247000
scoreboard players set -246 const -246
scoreboard players set -246000 const -246000
scoreboard players set -245 const -245
scoreboard players set -245000 const -245000
scoreboard players set -244 const -244
scoreboard players set -244000 const -244000
scoreboard players set -243 const -243
scoreboard players set -243000 const -243000
scoreboard players set -242 const -242
scoreboard players set -242000 const -242000
scoreboard players set -241 const -241
scoreboard players set -241000 const -241000
scoreboard players set -240 const -240
scoreboard players set -240000 const -240000
scoreboard players set -239 const -239
scoreboard players set -239000 const -239000
scoreboard players set -238 const -238
scoreboard players set -238000 const -238000
scoreboard players set -237 const -237
scoreboard players set -237000 const -237000
scoreboard players set -236 const -236
scoreboard players set -236000 const -236000
scoreboard players set -235 const -235
scoreboard players set -235000 const -235000
scoreboard players set -234 const -234
scoreboard players set -234000 const -234000
scoreboard players set -233 const -233
scoreboard players set -233000 const -233000
scoreboard players set -232 const -232
scoreboard players set -232000 const -232000
scoreboard players set -231 const -231
scoreboard players set -231000 const -231000
scoreboard players set -230 const -230
scoreboard players set -230000 const -230000
scoreboard players set -229 const -229
scoreboard players set -229000 const -229000
scoreboard players set -228 const -228
scoreboard players set -228000 const -228000
scoreboard players set -227 const -227
scoreboard players set -227000 const -227000
scoreboard players set -226 const -226
scoreboard players set -226000 const -226000
scoreboard players set -225 const -225
scoreboard players set -225000 const -225000
scoreboard players set -224 const -224
scoreboard players set -224000 const -224000
scoreboard players set -223 const -223
scoreboard players set -223000 const -223000
scoreboard players set -222 const -222
scoreboard players set -222000 const -222000
scoreboard players set -221 const -221
scoreboard players set -221000 const -221000
scoreboard players set -220 const -220
scoreboard players set -220000 const -220000
scoreboard players set -219 const -219
scoreboard players set -219000 const -219000
scoreboard players set -218 const -218
scoreboard players set -218000 const -218000
scoreboard players set -217 const -217
scoreboard players set -217000 const -217000
scoreboard players set -216 const -216
scoreboard players set -216000 const -216000
scoreboard players set -215 const -215
scoreboard players set -215000 const -215000
scoreboard players set -214 const -214
scoreboard players set -214000 const -214000
scoreboard players set -213 const -213
scoreboard players set -213000 const -213000
scoreboard players set -212 const -212
scoreboard players set -212000 const -212000
scoreboard players set -211 const -211
scoreboard players set -211000 const -211000
scoreboard players set -210 const -210
scoreboard players set -210000 const -210000
scoreboard players set -209 const -209
scoreboard players set -209000 const -209000
scoreboard players set -208 const -208
scoreboard players set -208000 const -208000
scoreboard players set -207 const -207
scoreboard players set -207000 const -207000
scoreboard players set -206 const -206
scoreboard players set -206000 const -206000
scoreboard players set -205 const -205
scoreboard players set -205000 const -205000
scoreboard players set -204 const -204
scoreboard players set -204000 const -204000
scoreboard players set -203 const -203
scoreboard players set -203000 const -203000
scoreboard players set -202 const -202
scoreboard players set -202000 const -202000
scoreboard players set -201 const -201
scoreboard players set -201000 const -201000
scoreboard players set -200 const -200
scoreboard players set -200000 const -200000
scoreboard players set -199 const -199
scoreboard players set -199000 const -199000
scoreboard players set -198 const -198
scoreboard players set -198000 const -198000
scoreboard players set -197 const -197
scoreboard players set -197000 const -197000
scoreboard players set -196 const -196
scoreboard players set -196000 const -196000
scoreboard players set -195 const -195
scoreboard players set -195000 const -195000
scoreboard players set -194 const -194
scoreboard players set -194000 const -194000
scoreboard players set -193 const -193
scoreboard players set -193000 const -193000
scoreboard players set -192 const -192
scoreboard players set -192000 const -192000
scoreboard players set -191 const -191
scoreboard players set -191000 const -191000
scoreboard players set -190 const -190
scoreboard players set -190000 const -190000
scoreboard players set -189 const -189
scoreboard players set -189000 const -189000
scoreboard players set -188 const -188
scoreboard players set -188000 const -188000
scoreboard players set -187 const -187
scoreboard players set -187000 const -187000
scoreboard players set -186 const -186
scoreboard players set -186000 const -186000
scoreboard players set -185 const -185
scoreboard players set -185000 const -185000
scoreboard players set -184 const -184
scoreboard players set -184000 const -184000
scoreboard players set -183 const -183
scoreboard players set -183000 const -183000
scoreboard players set -182 const -182
scoreboard players set -182000 const -182000
scoreboard players set -181 const -181
scoreboard players set -181000 const -181000
scoreboard players set -180 const -180
scoreboard players set -180000 const -180000
scoreboard players set -179 const -179
scoreboard players set -179000 const -179000
scoreboard players set -178 const -178
scoreboard players set -178000 const -178000
scoreboard players set -177 const -177
scoreboard players set -177000 const -177000
scoreboard players set -176 const -176
scoreboard players set -176000 const -176000
scoreboard players set -175 const -175
scoreboard players set -175000 const -175000
scoreboard players set -174 const -174
scoreboard players set -174000 const -174000
scoreboard players set -173 const -173
scoreboard players set -173000 const -173000
scoreboard players set -172 const -172
scoreboard players set -172000 const -172000
scoreboard players set -171 const -171
scoreboard players set -171000 const -171000
scoreboard players set -170 const -170
scoreboard players set -170000 const -170000
scoreboard players set -169 const -169
scoreboard players set -169000 const -169000
scoreboard players set -168 const -168
scoreboard players set -168000 const -168000
scoreboard players set -167 const -167
scoreboard players set -167000 const -167000
scoreboard players set -166 const -166
scoreboard players set -166000 const -166000
scoreboard players set -165 const -165
scoreboard players set -165000 const -165000
scoreboard players set -164 const -164
scoreboard players set -164000 const -164000
scoreboard players set -163 const -163
scoreboard players set -163000 const -163000
scoreboard players set -162 const -162
scoreboard players set -162000 const -162000
scoreboard players set -161 const -161
scoreboard players set -161000 const -161000
scoreboard players set -160 const -160
scoreboard players set -160000 const -160000
scoreboard players set -159 const -159
scoreboard players set -159000 const -159000
scoreboard players set -158 const -158
scoreboard players set -158000 const -158000
scoreboard players set -157 const -157
scoreboard players set -157000 const -157000
scoreboard players set -156 const -156
scoreboard players set -156000 const -156000
scoreboard players set -155 const -155
scoreboard players set -155000 const -155000
scoreboard players set -154 const -154
scoreboard players set -154000 const -154000
scoreboard players set -153 const -153
scoreboard players set -153000 const -153000
scoreboard players set -152 const -152
scoreboard players set -152000 const -152000
scoreboard players set -151 const -151
scoreboard players set -151000 const -151000
scoreboard players set -150 const -150
scoreboard players set -150000 const -150000
scoreboard players set -149 const -149
scoreboard players set -149000 const -149000
scoreboard players set -148 const -148
scoreboard players set -148000 const -148000
scoreboard players set -147 const -147
scoreboard players set -147000 const -147000
scoreboard players set -146 const -146
scoreboard players set -146000 const -146000
scoreboard players set -145 const -145
scoreboard players set -145000 const -145000
scoreboard players set -144 const -144
scoreboard players set -144000 const -144000
scoreboard players set -143 const -143
scoreboard players set -143000 const -143000
scoreboard players set -142 const -142
scoreboard players set -142000 const -142000
scoreboard players set -141 const -141
scoreboard players set -141000 const -141000
scoreboard players set -140 const -140
scoreboard players set -140000 const -140000
scoreboard players set -139 const -139
scoreboard players set -139000 const -139000
scoreboard players set -138 const -138
scoreboard players set -138000 const -138000
scoreboard players set -137 const -137
scoreboard players set -137000 const -137000
scoreboard players set -136 const -136
scoreboard players set -136000 const -136000
scoreboard players set -135 const -135
scoreboard players set -135000 const -135000
scoreboard players set -134 const -134
scoreboard players set -134000 const -134000
scoreboard players set -133 const -133
scoreboard players set -133000 const -133000
scoreboard players set -132 const -132
scoreboard players set -132000 const -132000
scoreboard players set -131 const -131
scoreboard players set -131000 const -131000
scoreboard players set -130 const -130
scoreboard players set -130000 const -130000
scoreboard players set -129 const -129
scoreboard players set -129000 const -129000
scoreboard players set -128 const -128
scoreboard players set -128000 const -128000
scoreboard players set -127 const -127
scoreboard players set -127000 const -127000
scoreboard players set -126 const -126
scoreboard players set -126000 const -126000
scoreboard players set -125 const -125
scoreboard players set -125000 const -125000
scoreboard players set -124 const -124
scoreboard players set -124000 const -124000
scoreboard players set -123 const -123
scoreboard players set -123000 const -123000
scoreboard players set -122 const -122
scoreboard players set -122000 const -122000
scoreboard players set -121 const -121
scoreboard players set -121000 const -121000
scoreboard players set -120 const -120
scoreboard players set -120000 const -120000
scoreboard players set -119 const -119
scoreboard players set -119000 const -119000
scoreboard players set -118 const -118
scoreboard players set -118000 const -118000
scoreboard players set -117 const -117
scoreboard players set -117000 const -117000
scoreboard players set -116 const -116
scoreboard players set -116000 const -116000
scoreboard players set -115 const -115
scoreboard players set -115000 const -115000
scoreboard players set -114 const -114
scoreboard players set -114000 const -114000
scoreboard players set -113 const -113
scoreboard players set -113000 const -113000
scoreboard players set -112 const -112
scoreboard players set -112000 const -112000
scoreboard players set -111 const -111
scoreboard players set -111000 const -111000
scoreboard players set -110 const -110
scoreboard players set -110000 const -110000
scoreboard players set -109 const -109
scoreboard players set -109000 const -109000
scoreboard players set -108 const -108
scoreboard players set -108000 const -108000
scoreboard players set -107 const -107
scoreboard players set -107000 const -107000
scoreboard players set -106 const -106
scoreboard players set -106000 const -106000
scoreboard players set -105 const -105
scoreboard players set -105000 const -105000
scoreboard players set -104 const -104
scoreboard players set -104000 const -104000
scoreboard players set -103 const -103
scoreboard players set -103000 const -103000
scoreboard players set -102 const -102
scoreboard players set -102000 const -102000
scoreboard players set -101 const -101
scoreboard players set -101000 const -101000
scoreboard players set -100 const -100
scoreboard players set -100000 const -100000
scoreboard players set -99 const -99
scoreboard players set -99000 const -99000
scoreboard players set -98 const -98
scoreboard players set -98000 const -98000
scoreboard players set -97 const -97
scoreboard players set -97000 const -97000
scoreboard players set -96 const -96
scoreboard players set -96000 const -96000
scoreboard players set -95 const -95
scoreboard players set -95000 const -95000
scoreboard players set -94 const -94
scoreboard players set -94000 const -94000
scoreboard players set -93 const -93
scoreboard players set -93000 const -93000
scoreboard players set -92 const -92
scoreboard players set -92000 const -92000
scoreboard players set -91 const -91
scoreboard players set -91000 const -91000
scoreboard players set -90 const -90
scoreboard players set -90000 const -90000
scoreboard players set -89 const -89
scoreboard players set -89000 const -89000
scoreboard players set -88 const -88
scoreboard players set -88000 const -88000
scoreboard players set -87 const -87
scoreboard players set -87000 const -87000
scoreboard players set -86 const -86
scoreboard players set -86000 const -86000
scoreboard players set -85 const -85
scoreboard players set -85000 const -85000
scoreboard players set -84 const -84
scoreboard players set -84000 const -84000
scoreboard players set -83 const -83
scoreboard players set -83000 const -83000
scoreboard players set -82 const -82
scoreboard players set -82000 const -82000
scoreboard players set -81 const -81
scoreboard players set -81000 const -81000
scoreboard players set -80 const -80
scoreboard players set -80000 const -80000
scoreboard players set -79 const -79
scoreboard players set -79000 const -79000
scoreboard players set -78 const -78
scoreboard players set -78000 const -78000
scoreboard players set -77 const -77
scoreboard players set -77000 const -77000
scoreboard players set -76 const -76
scoreboard players set -76000 const -76000
scoreboard players set -75 const -75
scoreboard players set -75000 const -75000
scoreboard players set -74 const -74
scoreboard players set -74000 const -74000
scoreboard players set -73 const -73
scoreboard players set -73000 const -73000
scoreboard players set -72 const -72
scoreboard players set -72000 const -72000
scoreboard players set -71 const -71
scoreboard players set -71000 const -71000
scoreboard players set -70 const -70
scoreboard players set -70000 const -70000
scoreboard players set -69 const -69
scoreboard players set -69000 const -69000
scoreboard players set -68 const -68
scoreboard players set -68000 const -68000
scoreboard players set -67 const -67
scoreboard players set -67000 const -67000
scoreboard players set -66 const -66
scoreboard players set -66000 const -66000
scoreboard players set -65 const -65
scoreboard players set -65000 const -65000
scoreboard players set -64 const -64
scoreboard players set -64000 const -64000
scoreboard players set -63 const -63
scoreboard players set -63000 const -63000
scoreboard players set -62 const -62
scoreboard players set -62000 const -62000
scoreboard players set -61 const -61
scoreboard players set -61000 const -61000
scoreboard players set -60 const -60
scoreboard players set -60000 const -60000
scoreboard players set -59 const -59
scoreboard players set -59000 const -59000
scoreboard players set -58 const -58
scoreboard players set -58000 const -58000
scoreboard players set -57 const -57
scoreboard players set -57000 const -57000
scoreboard players set -56 const -56
scoreboard players set -56000 const -56000
scoreboard players set -55 const -55
scoreboard players set -55000 const -55000
scoreboard players set -54 const -54
scoreboard players set -54000 const -54000
scoreboard players set -53 const -53
scoreboard players set -53000 const -53000
scoreboard players set -52 const -52
scoreboard players set -52000 const -52000
scoreboard players set -51 const -51
scoreboard players set -51000 const -51000
scoreboard players set -50 const -50
scoreboard players set -50000 const -50000
scoreboard players set -49 const -49
scoreboard players set -49000 const -49000
scoreboard players set -48 const -48
scoreboard players set -48000 const -48000
scoreboard players set -47 const -47
scoreboard players set -47000 const -47000
scoreboard players set -46 const -46
scoreboard players set -46000 const -46000
scoreboard players set -45 const -45
scoreboard players set -45000 const -45000
scoreboard players set -44 const -44
scoreboard players set -44000 const -44000
scoreboard players set -43 const -43
scoreboard players set -43000 const -43000
scoreboard players set -42 const -42
scoreboard players set -42000 const -42000
scoreboard players set -41 const -41
scoreboard players set -41000 const -41000
scoreboard players set -40 const -40
scoreboard players set -40000 const -40000
scoreboard players set -39 const -39
scoreboard players set -39000 const -39000
scoreboard players set -38 const -38
scoreboard players set -38000 const -38000
scoreboard players set -37 const -37
scoreboard players set -37000 const -37000
scoreboard players set -36 const -36
scoreboard players set -36000 const -36000
scoreboard players set -35 const -35
scoreboard players set -35000 const -35000
scoreboard players set -34 const -34
scoreboard players set -34000 const -34000
scoreboard players set -33 const -33
scoreboard players set -33000 const -33000
scoreboard players set -32 const -32
scoreboard players set -32000 const -32000
scoreboard players set -31 const -31
scoreboard players set -31000 const -31000
scoreboard players set -30 const -30
scoreboard players set -30000 const -30000
scoreboard players set -29 const -29
scoreboard players set -29000 const -29000
scoreboard players set -28 const -28
scoreboard players set -28000 const -28000
scoreboard players set -27 const -27
scoreboard players set -27000 const -27000
scoreboard players set -26 const -26
scoreboard players set -26000 const -26000
scoreboard players set -25 const -25
scoreboard players set -25000 const -25000
scoreboard players set -24 const -24
scoreboard players set -24000 const -24000
scoreboard players set -23 const -23
scoreboard players set -23000 const -23000
scoreboard players set -22 const -22
scoreboard players set -22000 const -22000
scoreboard players set -21 const -21
scoreboard players set -21000 const -21000
scoreboard players set -20 const -20
scoreboard players set -20000 const -20000
scoreboard players set -19 const -19
scoreboard players set -19000 const -19000
scoreboard players set -18 const -18
scoreboard players set -18000 const -18000
scoreboard players set -17 const -17
scoreboard players set -17000 const -17000
scoreboard players set -16 const -16
scoreboard players set -16000 const -16000
scoreboard players set -15 const -15
scoreboard players set -15000 const -15000
scoreboard players set -14 const -14
scoreboard players set -14000 const -14000
scoreboard players set -13 const -13
scoreboard players set -13000 const -13000
scoreboard players set -12 const -12
scoreboard players set -12000 const -12000
scoreboard players set -11 const -11
scoreboard players set -11000 const -11000
scoreboard players set -10 const -10
scoreboard players set -10000 const -10000
scoreboard players set -9 const -9
scoreboard players set -9000 const -9000
scoreboard players set -8 const -8
scoreboard players set -8000 const -8000
scoreboard players set -7 const -7
scoreboard players set -7000 const -7000
scoreboard players set -6 const -6
scoreboard players set -6000 const -6000
scoreboard players set -5 const -5
scoreboard players set -5000 const -5000
scoreboard players set -4 const -4
scoreboard players set -4000 const -4000
scoreboard players set -3 const -3
scoreboard players set -3000 const -3000
scoreboard players set -2 const -2
scoreboard players set -2000 const -2000
scoreboard players set -1 const -1

# SET UP VARIABLES
scoreboard objectives add vars dummy
scoreboard objectives add change dummy

# KILL EXISTING ITEM HOLDERS
kill @e[tag=item_holder]

summon armor_stand 910.49705725 64.50990018 -151.71500419 {Pose: {Head: [-0.03010286273641194f, -179.9962450211264f, 1.3549144268695619f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.87859678 65.49641442 -151.23015869 {Pose: {Head: [164.55377717172064f, -179.97763827368297f, -1.627203287175382f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.81755200 64.56618697 -152.04480385 {Pose: {Head: [-21.741021957615086f, -173.30241999820572f, -0.0035726932495522604f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.77095518 64.58259315 -152.11451776 {Pose: {Head: [-24.596182396223014f, -173.33445147756674f, -0.0007367027201954586f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.08113383 64.51118932 -151.83849654 {Pose: {Head: [-90.08876673905407f, 8.462113296655199f, 0.07570678465053851f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.45590841 64.48946591 -152.88499659 {Pose: {Head: [-84.26851717880525f, 118.12496049511853f, 1.4810363186204516f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.65885590 64.56526966 -152.78544245 {Pose: {Head: [-89.46047691734225f, 142.55542344658195f, -0.11907809049628636f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.17792143 64.61355867 -151.92464835 {Pose: {Head: [-13.376300074886432f, 171.41553218118955f, -23.734026153531484f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.38259441 64.46309628 -151.74250215 {Pose: {Head: [-0.05664481418502675f, -179.96324290439324f, 0.003738495402120205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.16722175 64.12879656 -151.71210796 {Pose: {Head: [90.2046652359884f, 178.96527561416798f, -4.7753068212133885f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.37483394 64.60937344 -151.23589235 {Pose: {Head: [89.9999970591032f, -175.86888326108598f, 0.00001265806066468251f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.67490295 64.55060567 -152.97355100 {Pose: {Head: [-90.30554231618396f, -179.68434235943982f, 2.580548868679604f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.52170266 64.80292391 -151.93774136 {Pose: {Head: [-23.422610346708023f, 163.19108680108477f, -47.853380340803675f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.21866136 64.54046982 -153.06671055 {Pose: {Head: [-90.23191858328791f, -179.96371522830748f, -0.15648920127963784f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.45667813 64.13595415 -151.81969852 {Pose: {Head: [90.69569655276669f, 178.55515174418215f, -4.362858801547823f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.28896965 64.51329148 -153.03268641 {Pose: {Head: [-90.19824817495943f, 179.47377886743715f, 0.008999151877614707f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.09349767 64.62168608 -151.26801555 {Pose: {Head: [89.2815452189561f, 169.28481175093674f, -3.079043345843385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.44930545 64.52984125 -152.92717783 {Pose: {Head: [-89.98703875657874f, 179.89608105484825f, -5.242918262855285f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.12020011 65.02510256 -151.75452399 {Pose: {Head: [-85.8464256066894f, 84.490693735561f, 0.8507786370768067f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.33950675 64.07590385 -152.47254431 {Pose: {Head: [85.09970506572097f, 83.78862328237173f, 0.2961294928677837f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.64434703 65.00785951 -152.32224506 {Pose: {Head: [-89.66727201044563f, -170.29461419065294f, -0.2650572710325365f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 908.31882959 64.63197595 -152.74334838 {Pose: {Head: [-97.55876523136735f, -179.1182908282729f, 2.111136699224309f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 909.87542328 64.52506193 -152.87957924 {Pose: {Head: [-90.39112715256184f, 134.84141810459076f, -8.566979585251683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 910.57610711 64.46301296 -151.77376510 {Pose: {Head: [-0.0326691702115545f, -173.3574406420999f, -0.00006097120377498083f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:melon_slice", Count: 1b, tag: {cost: 249, pos: '909.5 64 -152.5', display: {Name: '{"text":"Watermelon","color":"#cc3968"}', Lore: ["{\"text\":\"Ingredients:\",\"bold\":true,\"underlined\":true,\"italic\":false,\"color\":\"gray\"}","{\"text\":\"Powdered Melon\",\"color\":\"dark_gray\"}","{\"text\":\"Water\",\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (2.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 906.48820308 65.00820562 -152.35897063 {Pose: {Head: [-89.76024905741278f, 177.56054776685608f, 0.19490518875860152f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.53064513 64.51920876 -151.88262466 {Pose: {Head: [-12.902144296098305f, -179.66007619374457f, -0.012664274502851604f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.42317470 64.87393080 -152.45343303 {Pose: {Head: [-64.80401353871954f, -172.54283584378845f, 0.2866925065975841f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.75818832 65.51171706 -151.78780035 {Pose: {Head: [-89.99999851476204f, -177.46104946189683f, 0.0000164415396431661f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.28657615 64.75237823 -152.20413686 {Pose: {Head: [-50.829061079560894f, 140.28560332828445f, -0.01418927242396007f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.19116616 65.02273383 -152.40877882 {Pose: {Head: [-89.0424222192115f, 174.9666779812976f, 4.669878874052014f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.16810114 64.58058329 -152.10638882 {Pose: {Head: [-24.26922540605334f, 142.46785777905544f, -0.008985330980812438f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.76310390 64.46273239 -151.71505640 {Pose: {Head: [0.030903518520068285f, 179.88464919439915f, 0.00995915941022542f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.71817239 64.90580146 -152.54245586 {Pose: {Head: [-65.45141794054697f, 178.49666296895398f, 0.6863065679774664f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.69397594 64.63217069 -151.46497095 {Pose: {Head: [89.61297740815192f, -164.38605471596284f, 0.2689922215291755f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.56247845 64.46260598 -151.74203456 {Pose: {Head: [0.02900198780720117f, 179.67847366193286f, 0.04873586132793162f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.98121044 65.51171726 -151.80386753 {Pose: {Head: [-90.00000372386616f, -170.52108655858657f, 0.000005199078760652203f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 903.96926367 64.57596512 -151.99345556 {Pose: {Head: [-23.479991310859226f, 130.45634225169297f, -0.113252300703352f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 903.74244395 64.51171755 -152.20213824 {Pose: {Head: [-90.00003481499793f, 79.15349985796809f, 0.00001549317915503679f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.01113606 64.72607176 -152.18942444 {Pose: {Head: [-39.28641679614973f, 176.41382592281715f, -1.663105540245422f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.27658416 64.73304022 -152.02626408 {Pose: {Head: [-24.377588717132305f, -177.2716812769405f, -11.581368803003619f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.53287118 64.51123702 -152.92908466 {Pose: {Head: [-89.96299714999473f, 165.30211786455666f, 0.03762285872823472f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.13043087 64.58050361 -152.03946282 {Pose: {Head: [-24.24373061639661f, 142.42611264474994f, -0.0005039947257405797f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.06628786 64.72811915 -152.15668699 {Pose: {Head: [-39.36430449173477f, 179.14802375608286f, 1.1306566968491905f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.92064210 64.89723368 -152.35294679 {Pose: {Head: [-69.70444858469368f, 179.5325268236351f, -0.6528957173844026f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.98484814 65.01218181 -152.27379246 {Pose: {Head: [-90.27039045598714f, -178.93329824684648f, -0.14413378578474648f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.07746945 64.48703702 -151.71701280 {Pose: {Head: [-0.01921775399136317f, 179.45199994746852f, -0.07795254377403471f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.59381841 64.54417421 -152.91676131 {Pose: {Head: [-92.58761519574281f, -152.20923469505894f, 2.7194080455768965f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.49898288 64.60154970 -151.52359804 {Pose: {Head: [89.25195623305221f, -157.1782847136849f, 0.04124966106868748f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 906.72967607 65.02770215 -152.33331670 {Pose: {Head: [-89.49452848087581f, 178.5249026973567f, -5.7200611712245175f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.75932483 64.90664886 -152.47965510 {Pose: {Head: [-65.4773668656559f, 177.64105930343337f, 0.2999663434172988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.87077062 64.48740729 -151.74259207 {Pose: {Head: [-0.040954941904584166f, 179.4910604953912f, -0.13112872253920543f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 905.60018046 64.64645406 -151.88659852 {Pose: {Head: [-11.262761761320066f, -169.71148455621793f, 6.545892888251158f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.84411706 64.86246832 -152.47668232 {Pose: {Head: [-70.70740705533137f, 163.4873069075373f, -6.423001449991263f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 904.31372738 64.63795512 -151.96121521 {Pose: {Head: [-24.44617329973959f, 134.93891829701664f, -17.260554083173428f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:apple", Count: 1b, tag: {cost: 199, pos: '905.5 64 -152.5', display: {Name: '{"text":"Fuji Apple","color":"#FF0000"}', Lore: ["{\"text\":\"A Juicy Fuji Apple\",\"italic\":true,\"color\":\"red\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 901.97243719 64.13605040 -151.92994772 {Pose: {Head: [90.32698539219143f, -157.07652117213945f, -0.26028908085934f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.13296607 64.10852686 -151.90700983 {Pose: {Head: [90.079712263602f, -170.04182924885978f, -0.06906837411579603f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.66066601 64.54780011 -152.83747686 {Pose: {Head: [-90.20370661226755f, -159.1819948866893f, -4.856677347297989f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.68377447 64.69401643 -151.38923443 {Pose: {Head: [91.31906777571976f, -149.1252704543676f, -0.1359501094892443f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.28360607 64.51782858 -152.91893470 {Pose: {Head: [-90.88009522275912f, -172.79526719347302f, -0.12565237555988465f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.48246776 64.65080307 -151.35896470 {Pose: {Head: [91.83530457305346f, -174.44104272190856f, -6.725705102393389f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.08534544 64.16127160 -151.94776056 {Pose: {Head: [90.11819521291231f, -173.94905333295426f, -0.4191830654497709f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.21893110 64.53025156 -152.78472416 {Pose: {Head: [-91.7824728148928f, -152.28284910264543f, 4.822167177670632f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.72041784 64.52331270 -152.84384839 {Pose: {Head: [-90.50200839358325f, -164.78541023784024f, 4.55524144369164f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.79370333 65.02480666 -152.42088602 {Pose: {Head: [-89.735157165536f, 174.64978717978207f, 3.2782270829256275f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.36739329 64.18065376 -151.73563895 {Pose: {Head: [89.40092935173938f, 174.62423589709226f, -1.1127068839812182f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 902.29604744 65.01106752 -152.28107511 {Pose: {Head: [-90.01604520736934f, -177.25665694676556f, 0.12637658467922894f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.02394163 65.04869679 -152.45456246 {Pose: {Head: [-88.91590405945531f, -166.93905475679327f, -0.423716475841152f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.07704275 65.00608837 -152.31876518 {Pose: {Head: [-89.61818015604743f, -151.90856987392107f, 0.03574856637838752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.31706769 64.46287036 -151.77237686 {Pose: {Head: [0.004903299222413584f, -170.99768897109624f, -0.00022827470757008265f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.29602557 64.46288906 -151.73778140 {Pose: {Head: [-0.000010103855126372444f, -173.61701407786023f, -0.001095130778781821f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.03288867 65.03316249 -152.28732399 {Pose: {Head: [-89.86819379954102f, -147.44933829538385f, 0.061646254413264136f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.60299996 64.46287124 -151.75268240 {Pose: {Head: [0.004817470537168325f, -169.14790942386205f, 0.0006061466007868586f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 901.99158957 65.05046540 -152.29820605 {Pose: {Head: [-90.26923055859982f, 168.8304455493126f, -5.796102600090683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 900.22569914 64.68453869 -151.47109062 {Pose: {Head: [92.13571791542701f, -162.1663872123002f, 8.266658354177844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:glow_berries", Count: 1b, tag: {cost: 149, pos: '901.5 64 -152.5', display: {Name: '{"text":"Rainier Cherry","color":"#f2b91d"}', Lore: ["{\"text\":\"Fresh from ?????\",\"italic\":true,\"color\":\"gold\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.71651820 64.51165049 -164.30488375 {Pose: {Head: [-90.0879377375046f, 89.67937084015767f, -0.04128190676783838f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72865541 64.60226452 -165.17513821 {Pose: {Head: [-90.00644144522765f, 90.95116315619013f, 3.863168121753394f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69245382 64.53999395 -165.72164298 {Pose: {Head: [-90.10708845210274f, 90.68400462065394f, 0.16007990496347008f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70759196 64.53202696 -164.73641999 {Pose: {Head: [-91.0467647194662f, 90.84558433654631f, -3.1261039106266093f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71587124 64.51280133 -165.85424403 {Pose: {Head: [-90.0973848305389f, 89.79543152528157f, 0.10989398767946613f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.73375123 64.58683196 -165.31058168 {Pose: {Head: [-90.07261342910442f, 89.21378491499465f, 3.8219270870453026f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63562361 64.52875136 -165.58874499 {Pose: {Head: [-90.00434263719156f, 90.18244343340083f, -5.869708204317214f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.67168697 64.48984138 -164.94074181 {Pose: {Head: [-89.90494117527291f, 106.96954672052094f, -3.6607866541195033f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71014986 64.51049548 -165.34027946 {Pose: {Head: [-90.1007514389645f, 88.98711386700147f, -0.043914908024682425f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66208681 64.45081085 -165.98874337 {Pose: {Head: [-90.31725673783924f, 89.12519585408874f, -10.66947998699327f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beef", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.95801581 64.17222494 -164.64004904 {Pose: {Head: [-9.703675242702257f, 90.05950897419378f, -0.0008379527761305038f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.68210319 64.24524062 -164.82284716 {Pose: {Head: [-20.32600262945461f, 79.94913520292381f, 0.0008677129829559434f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.81771077 64.24054488 -165.22516511 {Pose: {Head: [-19.697825753375405f, 78.46506202259108f, -0.006138143594123387f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.99878467 64.17120056 -164.66337908 {Pose: {Head: [-9.560231456142155f, 90.03700068171962f, -0.013749615236522541f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.65910516 64.35642476 -166.32544011 {Pose: {Head: [-34.21912740412592f, 90.04744460551622f, -0.020956358536817453f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.61210601 64.35673401 -166.59299087 {Pose: {Head: [-34.214772811098435f, 90.22114356349566f, 0.002883157869330432f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 916.01977893 64.34031895 -164.61081145 {Pose: {Head: [-0.04708568602123054f, 90.05556722848453f, 15.335668760297851f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.89310196 64.17290916 -165.02068916 {Pose: {Head: [-10.215531553221354f, 80.33719204183055f, -1.9132263362696529f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.67619715 64.25058119 -164.54483601 {Pose: {Head: [-21.04002389970616f, 78.99975550569108f, 0.0061507140395142485f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"mutton", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 915.41974028 63.20550867 -166.77492061 {Pose: {Head: [-14.75949084844451f, 2.3245132830437436f, 0.0019460130634108572f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.02998821 63.18442767 -166.82516222 {Pose: {Head: [-11.642993986952701f, -8.664961169055594f, 0.025251289041536645f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.10202467 63.15200964 -167.05688724 {Pose: {Head: [-6.37982806027949f, 7.4141747447889905f, -0.00836905557686884f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.03798135 63.14838783 -167.20558134 {Pose: {Head: [-0.10562639578352041f, 0.811309699570014f, 5.230175391016763f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.43367447 63.17389981 -166.97031296 {Pose: {Head: [-6.4333513037578784f, 7.716311051520865f, 3.319373281842548f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.46027932 63.18450774 -166.80410802 {Pose: {Head: [-11.639684866111994f, 0.7146912412481569f, -0.02572307313682069f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 913.67636844 63.28621455 -166.72202945 {Pose: {Head: [-25.666485502837716f, -14.07166508195076f, -0.009541818728665706f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.61051940 63.15609187 -167.13413498 {Pose: {Head: [-1.107009563471473f, 12.99868456315804f, 4.82476337349509f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.92608762 63.12264099 -167.12752315 {Pose: {Head: [-1.0690535686277036f, 10.904024694942631f, -0.0008024788599362315f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.52742185 63.12340857 -167.12496201 {Pose: {Head: [-1.2173335491638257f, 12.89588293699308f, -0.014396880617957065f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"porkchop", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 913.96440845 64.11688617 -167.16651926 {Pose: {Head: [0.07167141850980537f, 8.94231083067918f, 0.0027324688471585044f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.03675146 64.11881534 -166.80914802 {Pose: {Head: [-0.3651165711146136f, -10.256941222458472f, -0.008080084675517454f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.66667842 64.11984540 -166.92110575 {Pose: {Head: [-0.5743117371602022f, -10.371110281577979f, -0.0911616366139999f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.69236238 64.11752158 -167.06049825 {Pose: {Head: [-0.08465949121160202f, -10.602251686340582f, 0.002179390581253828f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.74089124 64.12006929 -167.01517225 {Pose: {Head: [-0.5828792538240342f, -10.315720263141237f, 0.005460671102029421f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.26679018 64.24178959 -167.21089577 {Pose: {Head: [-0.004138702869115022f, 0.0423419203107747f, -0.7706994002483752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.52376803 64.11637555 -167.17173067 {Pose: {Head: [0.05127938724116391f, 0.07510033238283122f, -0.16302588543049382f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.33626823 64.21861385 -166.76098786 {Pose: {Head: [-16.640661995345493f, -19.730767682846704f, -0.003963388530989234f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 913.47921061 64.26678229 -166.73603565 {Pose: {Head: [-23.168734310357237f, 5.313403938573979f, -0.003439716894972731f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.70553394 64.21461134 -166.90246807 {Pose: {Head: [-16.07753591683335f, -4.614629870828529f, -0.0038757271366396343f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.18359707 64.11842375 -167.21053576 {Pose: {Head: [-0.030816273037922247f, -0.03387318451654822f, -0.20224025763289752f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.21425670 64.11639404 -166.80424164 {Pose: {Head: [0.03606289575674311f, -10.182883588433944f, 0.06318038403177302f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 913.51416131 64.26656903 -166.78231508 {Pose: {Head: [-23.13768961420247f, 6.636539849367086f, 0.007147992379001105f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.71156607 64.23028503 -166.78603631 {Pose: {Head: [-18.2798223130221f, -12.610786403978356f, -0.0021000178751431424f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.31334670 64.11759654 -167.00982852 {Pose: {Head: [-0.08838155359244851f, -22.02866738897989f, -0.0022509733858708473f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.61773327 64.12000126 -166.95297561 {Pose: {Head: [-0.5669512436062996f, -10.347952043986169f, 0.004497102504032596f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"rabbit", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 912.13090686 63.28782892 -166.77319762 {Pose: {Head: [-25.869475759395765f, 0.024833079228990564f, -0.0165468253663913f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 911.35614881 63.32112556 -166.60795970 {Pose: {Head: [-29.976446057497533f, 4.432425091169217f, 0.0017515621082851885f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 910.55464637 63.11641938 -167.20194760 {Pose: {Head: [0.03687152180653449f, 1.6204953105810305f, -0.16324290540579026f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 909.90170064 113.43000360 -166.40345199 {Pose: {Head: [-90.44451725039802f, -6.661144438875886f, -1.2462377484514349f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 910.53572096 63.31256222 -167.77081190 {Pose: {Head: [90.01021344602985f, 15.347630573212918f, 0.0028024068856973357f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 911.64396663 63.33340767 -166.76596516 {Pose: {Head: [-26.085532360741844f, 0.6571783213888653f, -7.769670614408922f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 909.95431035 113.35029915 -166.46615076 {Pose: {Head: [-89.96297846901105f, -0.6375195467241945f, -0.7544460359319763f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 909.74439203 113.50382794 -166.50355858 {Pose: {Head: [-90.59438124762309f, -7.922293942796703f, -1.2546507233822892f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 909.90376187 113.38939280 -166.46475632 {Pose: {Head: [-90.04704764689373f, -1.5952888646242291f, -0.7428728293855158f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 909.80093090 113.46812420 -166.44043940 {Pose: {Head: [-90.68421098008233f, -9.159701254099641f, -1.162037387221754f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 911.46365507 63.29988878 -166.68680482 {Pose: {Head: [-27.3859583414773f, 4.418527683379995f, 0.0034880283951540607f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 912.56931299 64.31123463 -166.63015027 {Pose: {Head: [-28.776320398776587f, -18.025702581522392f, 0.010754758712927082f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 911.11299201 64.29476532 -166.75834277 {Pose: {Head: [-26.726944530639454f, -0.3912986816060854f, 0.00016230315993488116f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 911.73845688 64.11741396 -167.21041148 {Pose: {Head: [-0.04836661387719101f, -0.030425956144882776f, -0.0016203174993691784f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 912.44075632 64.31109689 -166.63524954 {Pose: {Head: [-28.75649105944548f, -18.012662651372004f, -0.00036033409653458954f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 912.19900944 64.34512628 -166.60539987 {Pose: {Head: [-28.653981793221117f, -19.538605968171964f, -5.324989053088022f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 912.17418870 64.43561227 -166.64449251 {Pose: {Head: [-29.2211304016111f, -24.193235531293805f, -13.280698663633132f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 912.47119889 64.15742587 -167.21059010 {Pose: {Head: [-0.04721398568391847f, 0.012675010990478155f, -5.891133712530282f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 912.00923533 64.24896404 -166.81090928 {Pose: {Head: [-20.833902665404164f, -0.03400692115854809f, -0.014189549468035969f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 911.68655627 64.29438496 -166.62907915 {Pose: {Head: [-26.685733461992523f, -9.727759339539125f, -0.016153321642196336f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"chicken", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 915.68494036 64.01205694 -162.77627877 {Pose: {Head: [-89.90038905668872f, 90.89298228136732f, 0.3052885078474116f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70434162 64.06946584 -161.98219018 {Pose: {Head: [-90.17494993661387f, 97.98790112620893f, 4.241953431438747f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.60346989 64.06958855 -162.54757442 {Pose: {Head: [-89.52537502277332f, 85.3659769048436f, 1.252279332879847f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.60824564 64.10929889 -162.29976591 {Pose: {Head: [-89.86676475158971f, 95.01307099277591f, 3.6368667505776004f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72162921 64.03801217 -162.76617125 {Pose: {Head: [-89.66340892273665f, 92.09315234104008f, 0.5317003570454777f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72057531 64.01286333 -162.24736927 {Pose: {Head: [-89.80554437731507f, 92.55298561498059f, 0.4692770312203734f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69238772 64.13654222 -161.86435905 {Pose: {Head: [-89.66296707020504f, 94.12405656207865f, 8.593134567283197f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.62633781 64.92260324 -161.64324445 {Pose: {Head: [-65.6994130662694f, 82.16005415147875f, 4.909940736368638f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.59921496 65.03927668 -162.78128937 {Pose: {Head: [-90.13540017024397f, 90.01599711587946f, 0.18466044199211162f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84962155 64.83307120 -161.07554808 {Pose: {Head: [-73.48592517197714f, 24.18768326069931f, -18.930258758745758f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.28038859 64.46338784 -161.57567649 {Pose: {Head: [-0.18138782931791622f, 89.35086924387912f, 0.001032022176283337f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.93045544 64.99810843 -160.97289733 {Pose: {Head: [-85.52037083628942f, -7.897791761374717f, -24.744996370473615f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.47521817 64.66948652 -161.87160480 {Pose: {Head: [-64.76136368384336f, 69.9820722275852f, -9.827183054996814f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71327013 64.86796947 -162.02107243 {Pose: {Head: [-63.77497261001402f, 90.06496650421037f, 0.04297377320329432f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71578368 65.00634898 -162.58374472 {Pose: {Head: [-89.79624699363235f, 89.46646777625207f, -0.20374848972669693f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71658559 65.00827123 -162.06626494 {Pose: {Head: [-89.81920066587263f, 90.01752185424306f, -0.0607361092144051f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.46053363 65.06233287 -162.63425242 {Pose: {Head: [-89.68599839619633f, 94.03847838336448f, 0.4542767640248435f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:carrot", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -162', display: {Name: '{"text":"Carrot","bold":false,"color":"#e6671e"}', Lore: ["{\"text\":\"Recommended by\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"Pastor Ssempa\",\"italic\":true,\"color\":\"#e36f17\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.49939485 66.00979454 -159.32492717 {Pose: {Head: [-89.15582894307481f, 84.80052744393994f, -3.4026245468254412f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69813510 65.81212848 -160.25140187 {Pose: {Head: [-59.451812324911224f, 78.28010424931787f, 0.012779620571753492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.97037903 65.54609238 -162.75037185 {Pose: {Head: [-18.103963869335015f, 95.11684263842633f, -0.0045653005429522366f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.05793368 65.53912326 -162.31349972 {Pose: {Head: [-16.934260047080688f, 94.23012078732789f, -0.08468688352958005f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98910224 65.54387921 -162.59296375 {Pose: {Head: [-17.678853171578744f, 94.72758213812858f, 0.0034701895087274055f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.92777175 65.54592690 -162.58933442 {Pose: {Head: [-18.068328111328086f, 95.10244329936181f, -0.00018347839633906754f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85445625 65.56602492 -162.88388967 {Pose: {Head: [-21.71730562845939f, 108.62265942346042f, -0.000538738171726291f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72742768 66.01027387 -158.78844277 {Pose: {Head: [-90.01334955953097f, 89.78009143689272f, -0.0874002373514418f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03072869 65.53884165 -161.87865729 {Pose: {Head: [-16.746327760359506f, 94.66507102998293f, -0.008678849237420499f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.93735615 65.54344612 -162.28633940 {Pose: {Head: [-17.7572112203859f, 94.11290407742887f, -0.31833042272476253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.94991200 65.54062998 -161.46304867 {Pose: {Head: [-17.066946728908096f, 89.5110784179691f, 0.005896478671247719f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98309049 65.54203041 -162.11233110 {Pose: {Head: [-17.346313481490714f, 93.77677143599422f, -0.00655767228134263f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84377009 65.54561260 -161.67673321 {Pose: {Head: [-18.022752445271436f, 82.5367173450219f, -0.00586528041758102f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71253265 66.01139909 -159.65641673 {Pose: {Head: [-89.98268041599687f, 94.90779813147978f, -0.004804623015322572f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06235133 65.53554210 -161.48884781 {Pose: {Head: [-16.110498828339296f, 94.54475380227771f, -0.005667929151180065f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.04082808 65.54234586 -162.50647944 {Pose: {Head: [-17.411812782048575f, 94.95693885333138f, -0.012497405378747817f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89265505 65.54284297 -161.78647541 {Pose: {Head: [-17.52030117055675f, 82.5247744735109f, -0.041524261553195385f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.07643405 65.53739915 -161.95073390 {Pose: {Head: [-16.689581465064062f, 90.31573161266924f, -0.12625715182682706f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66488376 65.81884269 -160.07466452 {Pose: {Head: [-60.491536167205915f, 78.2124906622918f, -0.027831673778976367f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89458836 65.54580829 -162.53103038 {Pose: {Head: [-18.036614703681725f, 95.09033364433449f, 0.003832965706828454f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98827201 65.53801431 -161.16232398 {Pose: {Head: [-16.58173061475857f, 89.066697213436f, -0.011715454854863848f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00973792 65.54056765 -162.04719765 {Pose: {Head: [-17.071510169999076f, 93.4588238791158f, -0.010527247707458026f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03146825 65.54226331 -162.72785703 {Pose: {Head: [-17.386489300643902f, 94.95834072306837f, 0.0008275525566711988f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.67411137 65.62992896 -161.47220649 {Pose: {Head: [-32.539242334202726f, 82.45909194035731f, -0.22161506471744552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98210751 65.53927949 -161.61747400 {Pose: {Head: [-16.853738662449345f, 86.0139653532009f, -0.03663114552541217f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95578378 65.54237335 -162.13698275 {Pose: {Head: [-17.414588074381243f, 93.71200183313616f, -0.015639703263536926f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03072191 65.53799238 -161.48727327 {Pose: {Head: [-16.598852058738387f, 94.03573067086812f, -0.01392408726577081f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72100240 65.63587123 -161.22995512 {Pose: {Head: [-33.32751720535478f, 93.87617170233872f, 0.0006405965161310138f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72826564 65.80790209 -160.68179875 {Pose: {Head: [-59.023734895797396f, 90.03726123643213f, -0.047115670553443074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.08211326 65.53482872 -161.15882784 {Pose: {Head: [-16.14218574355251f, 90.27122953212253f, -0.09365503641900119f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84977354 65.55908573 -162.49429519 {Pose: {Head: [-18.056473075263238f, 96.49777498401619f, 1.3115341360028914f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87980128 65.54334643 -161.65652242 {Pose: {Head: [-17.595230002794153f, 82.47193338059532f, -0.006320931851878299f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72130815 65.65732418 -160.89701116 {Pose: {Head: [-36.571683495494746f, 93.86643353004897f, 0.09813170266861823f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69765442 66.03720970 -158.55571494 {Pose: {Head: [-90.03499064168726f, 74.30308608321253f, -0.1431476924710942f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63680212 65.96182411 -159.25176409 {Pose: {Head: [-87.5802814006366f, 100.0676455791975f, -5.662685537554924f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89980297 65.54268463 -161.95454303 {Pose: {Head: [-17.458951408055725f, 82.64207705121103f, 0.0008833250785836634f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sweet_berries", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.69983305 65.04596417 -159.32218988 {Pose: {Head: [-89.72944935364481f, 81.0129138323011f, 0.7637304256787973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.62081025 65.03138555 -160.83675706 {Pose: {Head: [-90.26330544292509f, 100.52920614975639f, -0.627810066616059f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68299414 65.01015449 -158.79386450 {Pose: {Head: [-89.32237771436463f, 105.2639403894151f, -4.2587520014434705f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68747692 65.01128886 -158.68425519 {Pose: {Head: [-90.15201060666729f, 90.69321385626749f, -0.061944092239941545f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70130192 65.00570454 -160.77089313 {Pose: {Head: [-90.02173713073425f, 99.00711883298011f, -0.3730367229092013f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71318874 65.04464720 -158.36259416 {Pose: {Head: [-90.1561423912064f, 94.13071437821516f, 0.8066359779137985f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72440522 65.01201798 -160.14104347 {Pose: {Head: [-90.00221691973147f, 90.937342810356f, 0.04489711289844309f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72844254 65.00919010 -158.23732128 {Pose: {Head: [-89.87580845557468f, 89.99047516501963f, 0.11164200909046229f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68186557 65.08366617 -160.93498194 {Pose: {Head: [-90.1599622494379f, 101.58760663788865f, -0.5038821203490794f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63616360 65.06991336 -158.06591068 {Pose: {Head: [-90.13025189371528f, 84.79334901015837f, 1.0117615363782888f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71988605 65.09762118 -158.15782616 {Pose: {Head: [-90.23502278195093f, 93.82732148606802f, 0.9786350021508726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71595108 65.05692201 -160.96345973 {Pose: {Head: [-90.2295941104188f, 97.51852852999919f, -0.48315540704516585f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72101419 65.07376306 -159.81345846 {Pose: {Head: [-90.05335015201139f, 91.76426821782229f, 4.650837494142788f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70506036 65.01137516 -159.10023100 {Pose: {Head: [-89.9707471444925f, 87.05521257137958f, 0.013201939608005779f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.51839787 64.00879742 -158.00370422 {Pose: {Head: [-89.77728971095699f, 85.1532328262661f, -0.06879075455839488f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69749329 64.06598189 -159.76679215 {Pose: {Head: [-90.1414264243829f, 98.72116589048893f, 0.021098622864195705f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.74437226 64.08641353 -158.52319564 {Pose: {Head: [-89.91670388448844f, 91.7866429278852f, 5.692404681606862f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70191569 64.01221469 -159.93013128 {Pose: {Head: [-90.08198939449714f, 100.24367829048333f, 0.042382308932982685f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.65629644 64.01253496 -158.81177606 {Pose: {Head: [-90.07123782639883f, 93.1851040008391f, 0.03631734178488533f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68186419 64.03576525 -160.36968706 {Pose: {Head: [-90.0017815898443f, 98.76321874909686f, -0.15826669887017897f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.48546266 64.05238389 -158.04628713 {Pose: {Head: [-89.65287606808391f, 79.45195409876675f, 1.2717967090603801f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.60747687 64.01013983 -159.26658553 {Pose: {Head: [-90.03270411903635f, 94.21114551943833f, -0.13084992344095125f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.64004716 64.03722416 -159.46810059 {Pose: {Head: [-90.11748780442153f, 98.5741114064778f, -0.14878368117015414f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72361278 64.00886133 -160.36517805 {Pose: {Head: [-89.96783056098766f, 91.67894868677632f, -0.14036558903748653f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.56175167 64.08908965 -159.06938625 {Pose: {Head: [-90.08627051478612f, 98.01771676692695f, 3.7623642906127808f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70520961 64.03974548 -159.90080982 {Pose: {Head: [-90.19090525665894f, 98.56965570210312f, 0.007079956402885811f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.59527689 64.06398399 -160.44331064 {Pose: {Head: [-90.0747206270127f, 97.36620521144505f, -0.11950738868604971f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potato", Count: 1b, tag: {cost: 124, pos: '915.5 63.625 -159.5', display: {Name: '{"text":"Potato","bold":false,"color":"#dbbb70"}', Lore: ["{\"text\":\"Unbaked and Unabashed\",\"italic\":true,\"color\":\"#a67429\"}","{\"text\":\"\"}","{\"text\":\"Sold (1.24B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.63371164 64.17850681 -156.57765614 {Pose: {Head: [-89.73856895115345f, 90.48353812355698f, 1.0801870454056843f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.67146871 64.04588783 -156.62045736 {Pose: {Head: [-89.54378158470688f, 89.21254639379306f, -6.658028089742556f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.55373481 64.09058877 -156.05164087 {Pose: {Head: [-89.40330944786625f, 90.48030243653092f, -5.052730770959109f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70519230 63.99183663 -155.25131286 {Pose: {Head: [-89.43897659938601f, 93.19389601734501f, -1.098776859553625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.65551113 64.12155439 -156.85205093 {Pose: {Head: [-89.72261957997043f, 87.1875544926728f, 5.900597047580927f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71968741 63.97892033 -156.57168332 {Pose: {Head: [-89.5208348390508f, 90.0365302049488f, -2.1989005470541128f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69081751 63.99102684 -156.55844948 {Pose: {Head: [-89.77751516010377f, 82.9647424848927f, -3.2809744157841956f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.57490587 64.00835953 -155.56256084 {Pose: {Head: [-89.61230369606241f, 95.55358034933447f, -3.4811344063703675f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58884494 63.97638963 -156.97232271 {Pose: {Head: [-89.84823874629221f, 87.11000124522768f, -4.732262760145038f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.62950610 64.02263923 -155.73337309 {Pose: {Head: [-88.7589730799531f, 76.96216026601391f, 1.652114599176096f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.62529761 64.06156355 -155.80036239 {Pose: {Head: [-89.16425361889856f, 93.0280498304834f, -3.224783289715716f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58425214 63.93028988 -157.34402615 {Pose: {Head: [-87.65925570717003f, 90.91311480683659f, -18.21526850328696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.64575799 64.10001687 -156.18899153 {Pose: {Head: [-89.62793537273895f, 89.92541399888033f, -5.410784381101991f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68514626 63.99922402 -155.30174738 {Pose: {Head: [-89.77186812803876f, 77.06785657088551f, -2.854884359676027f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61536187 64.06924044 -154.72137501 {Pose: {Head: [-79.69398016592734f, 59.97436480916896f, 15.793175718791863f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61591964 64.04676769 -155.37890241 {Pose: {Head: [-91.07478044863005f, 76.05699209488583f, -3.7503527917930537f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68895987 64.06292499 -155.52270726 {Pose: {Head: [-90.1889131872738f, 87.03938661964159f, -3.5328083848619958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61588657 63.98463040 -157.33090415 {Pose: {Head: [-90.02082995800653f, 90.72587734207332f, -3.9345383306538384f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70617119 64.08018691 -156.43278271 {Pose: {Head: [-89.7786938427182f, 85.42545421521092f, 1.8239756595435943f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58137464 64.06514194 -156.73792368 {Pose: {Head: [-89.77446270579699f, 86.45886737008355f, -5.92416456230422f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.54038139 64.06768021 -155.88014677 {Pose: {Head: [-88.8430597189576f, 94.99456625666078f, -6.4629165998838625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63637299 64.12153467 -156.23911579 {Pose: {Head: [-89.06946756915578f, 92.96364206367916f, 2.999127391488378f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58780360 64.03012996 -155.95145157 {Pose: {Head: [-89.77690562816068f, 86.50586011314196f, -3.286344171197492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63715370 64.00139359 -157.50190671 {Pose: {Head: [-90.06549672190705f, 90.90695926513615f, -3.7465105083214008f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.64674265 64.00934915 -156.11117966 {Pose: {Head: [-89.18410249209849f, 92.76371859291864f, -2.053359890642266f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68267561 64.10695369 -157.15684182 {Pose: {Head: [-89.67896724636523f, 87.29388665802298f, 4.15152697882427f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72904597 64.00172268 -156.13370374 {Pose: {Head: [-88.9363329189596f, 89.97933200750367f, 1.1935017186673933f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58393016 64.07998319 -155.64097179 {Pose: {Head: [-88.42370002539394f, 98.43999843140196f, -4.580166049660546f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.52267096 64.06852118 -156.97313634 {Pose: {Head: [-90.23144033541983f, 83.21220980428703f, -5.846472136053615f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66948372 64.20200167 -156.35241017 {Pose: {Head: [-89.73725518496943f, 90.51605850395796f, 1.143053438747457f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.61161304 64.09452958 -156.99579830 {Pose: {Head: [-90.44760530626094f, 81.61150749378697f, -5.882646106885968f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.67130038 64.24316997 -155.97977624 {Pose: {Head: [-90.02533747912376f, 93.2262963493875f, 4.27966060987391f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.68510881 64.09744432 -156.41634825 {Pose: {Head: [-89.46794065061128f, 91.00998063723428f, 1.61584142478914f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"red_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.78527368 64.54677474 -156.46048101 {Pose: {Head: [-18.210687968097773f, 79.06525318727336f, 0.00681794016092957f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83210208 64.53642391 -157.40695826 {Pose: {Head: [-16.296994342231052f, 106.75418322737065f, -0.04388430909086751f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06128760 64.51364232 -157.18399225 {Pose: {Head: [-13.708228410945878f, 91.3511859022853f, -5.985030261699726f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.85822446 64.53703536 -156.70008755 {Pose: {Head: [-16.09087960903244f, 91.81631999537f, 0.15987800921243048f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.08968055 64.52056547 -157.77157062 {Pose: {Head: [-13.18256992589296f, 88.91959465877129f, -0.011419799710408235f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.04119143 64.51621613 -157.03642584 {Pose: {Head: [-12.325347450041958f, 100.67230344015606f, -0.0162446045056517f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84469226 64.53806538 -157.06817107 {Pose: {Head: [-16.41750825502667f, 94.11890677985217f, 0.09812139020091551f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.18475144 64.48904311 -156.93894894 {Pose: {Head: [-6.461739872925388f, 94.55588705605868f, -0.014825243966331598f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66654169 65.01171747 -155.42348926 {Pose: {Head: [-90.00003824576635f, 86.1811027754775f, 7.643812403604188e-7f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96055996 64.52450259 -157.53819012 {Pose: {Head: [-13.944829352261184f, 93.11359776617122f, 0.005558444052033972f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.04557607 64.49931262 -156.28932368 {Pose: {Head: [-7.034526107166258f, 86.83632075388603f, 0.9072697284834613f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.12802198 64.49614420 -156.15591150 {Pose: {Head: [-6.7667363844690955f, 82.7507753518885f, 0.6704242734458673f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03820794 64.52229316 -157.50433803 {Pose: {Head: [-13.415663205496404f, 88.1872766378126f, 0.05928581993095626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.89661237 64.53456815 -156.81748972 {Pose: {Head: [-15.91299695670371f, 89.17386931632075f, 0.002949321746254253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.08357016 64.49092983 -156.27955792 {Pose: {Head: [-6.864054767697603f, 86.40221853551748f, -0.0010852318180882227f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81246653 64.53568679 -157.23966840 {Pose: {Head: [-16.12687293663629f, 106.58264592637846f, 0.005140420007016607f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.92104210 64.53640262 -157.80401447 {Pose: {Head: [-16.265453787581066f, 100.6010165297671f, 0.006425533782917731f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.83003608 64.54127999 -157.69991459 {Pose: {Head: [-17.190923346922567f, 101.17713626578352f, 0.0021217130145038056f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.13390581 64.48996874 -156.37261855 {Pose: {Head: [-6.648350943591536f, 78.77188190543866f, 0.010957130717589159f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.20539563 64.48750598 -156.25797473 {Pose: {Head: [-6.086864529195717f, 90.05129823518357f, -0.004516326572464974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00323052 64.52392091 -157.78405159 {Pose: {Head: [-13.838473666557785f, 93.14326753263698f, -0.002204342858880536f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.99735485 64.54954613 -156.72678606 {Pose: {Head: [-8.452806300622415f, 109.32432106801407f, 5.939739090472893f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.11833849 64.51943006 -157.80933461 {Pose: {Head: [-12.897091108412354f, 89.31681458338633f, 0.08171752955271552f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06678091 64.52137253 -157.52003925 {Pose: {Head: [-13.334404846087203f, 88.27082323679845f, -0.0001425761891209528f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.97961038 64.52493375 -157.34165617 {Pose: {Head: [-14.054064644843121f, 92.32190960244247f, -0.012791843075284696f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.21386513 64.48592546 -156.61738425 {Pose: {Head: [-6.054230854375663f, 94.31588763189555f, -2.570725291493387f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.93860175 64.52761015 -156.98624497 {Pose: {Head: [-14.563502754575529f, 89.24709758701914f, 0.004206701481696022f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.15519611 64.48839882 -156.78151132 {Pose: {Head: [-6.512488136961567f, 92.48062047609368f, -1.334033725134973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.80041123 64.53938820 -156.74894438 {Pose: {Head: [-16.835482904320003f, 84.97164538925195f, -0.0015921354735434169f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.27279305 64.48681705 -157.25044021 {Pose: {Head: [-6.644583659742927f, 93.36651126294454f, -9.372074226039148f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86754908 64.53768470 -157.69985691 {Pose: {Head: [-16.522315373496017f, 101.18473917536527f, -0.008608810003306175f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.91162004 64.52725342 -157.28204330 {Pose: {Head: [-14.50688170360735f, 93.08504581007087f, -0.006759746782959903f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"brown_mushroom", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.51841113 63.74551236 -153.97584374 {Pose: {Head: [-37.960551966835105f, 101.66095983278449f, 15.330517091804383f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70757685 64.01065476 -154.68482893 {Pose: {Head: [-89.97388577728272f, 96.86676454561588f, -0.06209672129389281f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69478995 64.03757939 -151.64392393 {Pose: {Head: [-89.93860168415621f, 77.92982774075227f, -0.007283774826463253f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72002537 64.01102080 -152.04265677 {Pose: {Head: [-89.9557482288381f, 91.1397859371698f, 0.027002549346101242f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.91948810 63.58054164 -153.82284978 {Pose: {Head: [-24.849278061534793f, 91.42098630908991f, -1.0313590348475934f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79361560 63.63120103 -153.76890783 {Pose: {Head: [-25.41548406596377f, 94.3336097147909f, 3.917371148603735f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.57931994 64.03788796 -154.70229131 {Pose: {Head: [-89.9530259071751f, 91.3672715524054f, 0.011945737226232144f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96300166 63.57996483 -153.59960396 {Pose: {Head: [-24.24050560977492f, 98.08478563905707f, -0.05568088061505636f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.69269518 64.06628112 -152.48142371 {Pose: {Head: [-89.37768024498608f, 91.15341973260126f, 4.438726947615373f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95927737 63.58172382 -153.79388125 {Pose: {Head: [-24.464335832969827f, 98.12739440642213f, -0.005160892362734177f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.72521449 64.01075457 -152.76340438 {Pose: {Head: [-89.68146416385245f, 90.93368312145346f, 0.3364985664733062f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.70764046 63.97960343 -152.88514159 {Pose: {Head: [-89.72476654789394f, 90.01556298507941f, -6.898460725996037f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88873050 63.58388709 -153.34469528 {Pose: {Head: [-24.82720443427233f, 86.84937472371978f, -0.0029549498943031625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.43571303 64.05015053 -152.11291830 {Pose: {Head: [-87.96354149406105f, 70.10371787253139f, 0.0960247093970416f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.38058577 63.48275948 -154.34353459 {Pose: {Head: [0.048759631048240396f, 89.98155855715812f, -9.566624267559343f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86827175 63.58990722 -154.25907318 {Pose: {Head: [-25.86541193382065f, 109.65767152291353f, -0.009550764955005382f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.58844778 64.03587710 -152.06756603 {Pose: {Head: [-88.11513512574274f, 77.86941895042268f, 0.8917994873723957f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84349722 63.58579607 -153.67081486 {Pose: {Head: [-25.159056311922516f, 91.84595557553584f, -0.007038855169975969f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88060063 63.58602071 -153.90148595 {Pose: {Head: [-25.17758365025277f, 91.79488583792539f, 0.005100286823103459f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95152484 63.58203144 -154.11349618 {Pose: {Head: [-24.586961720135662f, 91.47887576167415f, -0.05958077331565844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98669712 63.58089632 -153.32376588 {Pose: {Head: [-24.441492372342783f, 90.16049891727955f, -0.07571464642958756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"bamboo", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.67850493 65.01013813 -152.87680997 {Pose: {Head: [-89.73396715573035f, 86.44704688978918f, 0.24226787192088944f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79324560 64.65940702 -153.39065928 {Pose: {Head: [-30.676869513747974f, 93.2245519238464f, 3.409325871733945f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71869372 65.01069019 -151.79034528 {Pose: {Head: [-90.05728656741188f, 91.37688188395558f, -0.06564046613544267f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66781696 65.12359062 -152.64585232 {Pose: {Head: [-89.96996126509254f, 92.46307455124075f, 4.590272462221346f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.79160610 64.62240542 -153.85883901 {Pose: {Head: [-31.183222022137087f, 102.28480422692512f, 0.028541469431320833f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.53844832 65.03887563 -154.68708975 {Pose: {Head: [-89.95462391700562f, 93.76755183614212f, 0.14752738781938723f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.66223820 64.98524527 -152.19933835 {Pose: {Head: [-89.84637859184626f, 93.5806887663507f, -4.0193052014273976f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71981452 65.01101635 -154.67437581 {Pose: {Head: [-89.96921300108879f, 90.99351829485043f, -0.0199474894392228f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.63086045 65.03489572 -152.86840999 {Pose: {Head: [-89.60997056656603f, 93.25953245572217f, 0.2861276045760949f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.87245860 64.61742455 -153.41829563 {Pose: {Head: [-30.397730912482192f, 90.65280178453091f, -0.0038880208638047177f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.27396627 64.47399651 -153.48502389 {Pose: {Head: [-0.32248296417476136f, 90.07421740935084f, 0.956041816585777f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.90832178 64.60982034 -153.43226728 {Pose: {Head: [-29.644806553719416f, 90.00189992871395f, -0.2551108490317571f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.51587317 65.03556383 -151.73129756 {Pose: {Head: [-90.05842415586753f, 90.80035039089714f, -0.17604526208432705f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.77422167 64.62462386 -153.62156975 {Pose: {Head: [-30.950083840003945f, 101.91821150716827f, 0.33055714866458275f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.65808195 64.97739047 -152.44844168 {Pose: {Head: [-89.47955771755666f, 96.75339743970515f, -5.669848511707514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.84289091 64.61774310 -153.56630191 {Pose: {Head: [-30.452697542226627f, 90.7617986151506f, 0.0028940856057223965f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.86830979 64.63903259 -153.86176417 {Pose: {Head: [-33.90577493822153f, 82.88767945253677f, -0.028148022551059377f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.88868707 64.64131520 -154.18803513 {Pose: {Head: [-34.178284106780794f, 89.95385660551612f, 0.03484447004985036f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.78447818 64.62856996 -154.03583984 {Pose: {Head: [-32.227445969095314f, 102.24553727047545f, 0.033389170611768514f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.60447519 65.06320079 -152.91676391 {Pose: {Head: [-89.66758387415341f, 87.98336212768662f, 0.3128003111439585f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"kelp", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 916.12784122 65.46474558 -156.02449132 {Pose: {Head: [-0.6597213913334702f, 96.99234209317244f, -0.04887908733175961f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.13054681 65.46369042 -156.25403330 {Pose: {Head: [-0.45378133100322054f, 97.58264931155527f, -0.12123842762071174f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.05511643 65.46354757 -156.45094318 {Pose: {Head: [-0.1708517601497051f, 97.10364869056052f, 0.004914049686407092f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03774302 65.46421132 -156.07778933 {Pose: {Head: [-0.35210677752295255f, 97.53292085133205f, 0.003988206616105349f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.23354337 65.46544975 -157.13676656 {Pose: {Head: [-0.7039292397528659f, 86.4681911571204f, -0.004606009401224929f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.15670918 65.46638556 -156.88696301 {Pose: {Head: [-0.7548657950569669f, 96.93545278509193f, 0.09499796019273729f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.21941343 65.46560765 -156.91824452 {Pose: {Head: [-0.7118235367011054f, 86.47480911322869f, 0.00861903329585542f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.24144786 65.46294384 -155.76420895 {Pose: {Head: [-0.0193307206241108f, 102.96126691649725f, -0.001250196096530894f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.94094610 65.46440114 -155.93230622 {Pose: {Head: [-0.4170350239097304f, 94.09384488926946f, -0.0027041997643150076f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.05013355 65.46533821 -155.93060394 {Pose: {Head: [-0.687688879758951f, 98.30425474785467f, -0.0006459938981469151f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.15590832 65.46573571 -157.10342698 {Pose: {Head: [-0.7674184365342549f, 99.41022647333413f, 0.0030375635432896503f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00065506 65.46425987 -156.01488200 {Pose: {Head: [-0.3770834488123277f, 97.22398659622661f, -0.0025499514731882876f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.19412733 65.46512845 -156.12273340 {Pose: {Head: [-0.6516307872852166f, 96.80281448299819f, 0.06550296040954026f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.13384254 65.46128177 -157.17939958 {Pose: {Head: [0.48481297477391444f, 104.43930909893707f, 0.05664422005724725f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00635390 65.46315889 -156.93992989 {Pose: {Head: [-0.20931191603616345f, 79.68194834799631f, 0.07568531682118279f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.15297747 65.46464834 -156.61575201 {Pose: {Head: [-0.5008605057486886f, 105.05636997983834f, -0.005915279171698354f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.14830896 65.46502371 -155.97080204 {Pose: {Head: [-0.6687807376385259f, 96.96709574914486f, 0.0002963728709889389f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06868541 65.46523065 -155.80496274 {Pose: {Head: [-0.6354044489415022f, 96.83412787835057f, 0.003550118197399497f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.26326432 65.46324065 -156.09825585 {Pose: {Head: [-0.021207320680343016f, 95.72314280981703f, 0.05214840898693291f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00273087 65.46449588 -156.26130131 {Pose: {Head: [-0.41906766007580654f, 96.41025500348276f, -0.18991994923613725f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.23228957 65.46190437 -156.04277306 {Pose: {Head: [-0.03084577573984146f, 95.67838138618274f, -0.17333398292185898f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"beetroot", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 916.15978454 65.48284035 -153.42922062 {Pose: {Head: [-4.997699754795066f, 92.10645592883002f, -0.0021363320171285754f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96527634 65.52134273 -151.96019873 {Pose: {Head: [-13.323530695752904f, 80.21984332350812f, -0.00046564137345325447f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.07179753 65.48589271 -152.65067379 {Pose: {Head: [-5.074951030409058f, 82.29449825121986f, 0.22535734250742273f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00929620 65.56903273 -154.23790576 {Pose: {Head: [-22.25481419052015f, 89.92801968172408f, 0.014484774618280958f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.18239888 65.48900203 -151.83158724 {Pose: {Head: [-6.417224273368451f, 85.36206028141547f, 0.005253181952812262f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03686492 65.49378457 -152.47312558 {Pose: {Head: [-7.5110270206227545f, 80.35317626843202f, -0.005058893474009337f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.34003935 65.50872091 -152.15236993 {Pose: {Head: [-0.06978741390729848f, 89.93692896892266f, -5.643299324742315f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10384322 65.48290956 -153.41430285 {Pose: {Head: [-5.080750293791577f, 92.40275014339774f, -0.06607302781140816f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.02968107 65.52108157 -151.75480484 {Pose: {Head: [-13.268583948373504f, 80.8242454481778f, 0.0030001645041716728f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.94201642 65.52129009 -151.93006194 {Pose: {Head: [-13.33385476157715f, 80.21112265585742f, -0.004664768448979686f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.09690323 65.48512664 -153.72544949 {Pose: {Head: [-5.569564591847336f, 110.93888398776558f, 0.03272592413339433f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.12606340 65.48320362 -153.27921499 {Pose: {Head: [-5.089187889440008f, 92.12513006215663f, -0.006363225491006364f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.96153690 65.51688266 -152.21302833 {Pose: {Head: [-12.41621977225119f, 80.27387007277396f, 0.0014856805157788596f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.13436703 65.51858191 -151.71336009 {Pose: {Head: [-6.4495764099739405f, 85.77206542195638f, 3.4522391306188913f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95285978 65.48608331 -153.04527030 {Pose: {Head: [-5.747991739095937f, 90.46527955377222f, 0.0010637655471783232f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10069384 65.48294774 -152.93529563 {Pose: {Head: [-5.020489353850195f, 84.83479072695413f, -0.004698109385836936f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.14489420 65.48204514 -152.77538791 {Pose: {Head: [-4.813842239452245f, 85.95769098604575f, -0.004327176773617329f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.92216910 65.56933050 -154.05374576 {Pose: {Head: [-22.299165199159386f, 88.69407124854433f, -0.004095770661104278f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.14628213 65.49135940 -152.18913804 {Pose: {Head: [-7.06904452724459f, 97.00146377393548f, -0.6302792938333781f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00973914 65.48515200 -152.97470202 {Pose: {Head: [-5.5527589491192515f, 90.45981973710099f, -0.011874432864600031f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.25765620 65.46290926 -152.78192932 {Pose: {Head: [-0.016651006524844608f, 92.00187351130874f, -0.005505928514836015f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.03880511 65.48820173 -153.67571020 {Pose: {Head: [-6.254964900615747f, 111.04158182386983f, 0.009839956390551009f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10281982 65.49680412 -152.37921497 {Pose: {Head: [-7.153005993815667f, 97.10246395407084f, 0.543054823938854f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.33968366 65.47420246 -152.58912162 {Pose: {Head: [-0.10537544612071384f, 90.09321835773252f, -5.644560987196646f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.00263629 65.50207556 -152.37257518 {Pose: {Head: [-9.353607856859215f, 80.36510359028088f, -0.08008975388130829f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.06287811 65.48374337 -153.34613896 {Pose: {Head: [-5.048507401787268f, 94.70109292438315f, 0.2143956024917452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98055090 65.48555799 -152.89367094 {Pose: {Head: [-5.629501279690696f, 90.46759117324376f, -0.0011001053299344143f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.98062757 65.56903053 -154.09821625 {Pose: {Head: [-22.241230236174673f, 89.85628750144929f, 0.00031454888202911104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.07663977 65.48286519 -152.83695624 {Pose: {Head: [-5.000351433546379f, 82.34947175631511f, -0.0008434180324064292f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.95042719 65.56907630 -154.30102302 {Pose: {Head: [-22.250098529135045f, 89.82922866822214f, 0.0013868730834747706f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.19779553 65.48127487 -153.58697069 {Pose: {Head: [-4.641782572121773f, 92.13251730685624f, -0.009915280501683707f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.10871158 65.61741939 -153.30067690 {Pose: {Head: [-0.050004567719995646f, 91.65472441780327f, 18.923097836877464f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.13159704 65.49231557 -152.35175417 {Pose: {Head: [-7.172421566697829f, 97.04731863087632f, -0.0004080528592768004f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 916.25154062 65.46332202 -153.05080604 {Pose: {Head: [-0.0003730263401246233f, 91.9718535439217f, -1.2130925987377397f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sugar_cane", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 915.73394256 65.70840695 -152.41661497 {Pose: {Head: [-48.68038821972866f, -166.6322146171205f, 7.316045392987516f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.05026294 65.71870723 -152.28070127 {Pose: {Head: [-45.896387162422045f, 164.60727112406352f, 0.029715697862250683f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.95648063 65.71367382 -152.19903254 {Pose: {Head: [-45.2655596249898f, -179.98617871678206f, 0.10595591845071835f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.61426737 65.73874131 -152.21175179 {Pose: {Head: [-45.42153673198399f, 177.32510870140928f, -2.392777674538715f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.43605523 65.71590781 -152.27080868 {Pose: {Head: [-45.49139718494442f, 178.85385153697996f, -0.00701174315030127f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.97703388 65.71895004 -152.33764921 {Pose: {Head: [-45.90237558645071f, 161.2209270633719f, 0.053251841802774626f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.36058978 65.73943210 -152.25498057 {Pose: {Head: [-46.316477386221244f, 179.06836453102784f, 4.443868822363776f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.06446635 65.69351608 -152.24562930 {Pose: {Head: [-42.24608573219355f, 153.97401782916603f, -3.8026486308924756f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.34847542 65.72781050 -152.36952421 {Pose: {Head: [-47.264708567760316f, -169.94967955660172f, 0.21876596712144458f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.71698948 65.74335480 -152.27355558 {Pose: {Head: [-47.96454714291033f, -177.63501600924138f, -2.4933349789152874f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.50248891 65.73910159 -152.24543668 {Pose: {Head: [-47.716011610417816f, -174.21752994283585f, 2.92236311265984f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.18333918 65.72285606 -152.23546711 {Pose: {Head: [-46.51140388896295f, -169.42437672976945f, -0.04417001611758688f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.41277614 65.72043519 -152.21083111 {Pose: {Head: [-46.617594969303646f, -178.5418799247381f, -0.7014854856252737f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.12099346 65.72124307 -152.32255842 {Pose: {Head: [-46.32550258005908f, -169.74875652134943f, -0.013415718342955423f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.75946636 65.73318784 -152.36155962 {Pose: {Head: [-48.047770875972f, -174.95484485573186f, 0.012074175090667513f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.83923024 65.63610225 -152.48769528 {Pose: {Head: [-46.48394255673671f, -173.68881949647266f, 10.031737083007178f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.55976124 65.72859268 -152.21498797 {Pose: {Head: [-47.727383720597224f, -179.66494650558988f, -0.3819038194068169f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.31956693 65.72661193 -152.32196351 {Pose: {Head: [-46.67479815248866f, -168.62818461702022f, 1.2907946628925537f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.49705639 65.72188154 -152.32321557 {Pose: {Head: [-46.28474053022183f, 174.53239171168133f, 0.14176488287526104f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.63438476 65.71801286 -152.31719540 {Pose: {Head: [-45.80651091157386f, 177.9778792504346f, -0.0004302810350342648f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.90597668 65.73456501 -152.23953080 {Pose: {Head: [-46.23702619338904f, -172.9774922637095f, -2.7151646478582943f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.27525268 65.71358490 -152.19927517 {Pose: {Head: [-45.366921586052314f, -179.8571522179945f, -0.1964026386384974f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.74671626 65.72976587 -152.21633762 {Pose: {Head: [-46.28637168381889f, -176.6007756304883f, -2.808273349676973f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81896475 65.73327823 -152.31535488 {Pose: {Head: [-48.05133210890184f, -174.94612774445983f, 0.002121252506422071f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.24468207 65.71803964 -152.37491129 {Pose: {Head: [-45.968645732504655f, 163.76682833007214f, -0.40569815981317214f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.11537005 65.72470512 -152.28251820 {Pose: {Head: [-46.34422213076357f, -170.25282074264314f, -0.5670341061599595f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.61485502 65.75259784 -152.31938440 {Pose: {Head: [-46.02137427890951f, -176.74779227689427f, 4.978663733312834f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"sea_pickle", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 913.62085929 62.70400019 -152.17991183 {Pose: {Head: [-14.547202529560916f, -167.8377309439821f, -0.006187995935348098f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.47101399 62.71273347 -152.29591860 {Pose: {Head: [-15.80510960695696f, -176.13974613900513f, 0.0015681339706253182f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.14593151 62.61838230 -151.84204598 {Pose: {Head: [-0.23045202902246764f, -176.231205212469f, 0.007873664818208833f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.39191613 62.62786874 -151.82949207 {Pose: {Head: [-0.11009983032835814f, -179.97462588114288f, 1.8236526952729102f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.63919119 62.77028206 -152.31304746 {Pose: {Head: [-23.62732083027099f, -179.9586859037497f, -0.0014311398515282094f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.53412546 62.62339300 -151.91162977 {Pose: {Head: [-1.2108780915647577f, -176.07908654151575f, -0.004443589335031106f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.55119518 62.77011338 -152.27030829 {Pose: {Head: [-23.60933237748836f, -179.97130094269934f, -0.0016551546435094211f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 915.32153797 62.72329876 -151.78967131 {Pose: {Head: [-0.07920905963872699f, -179.98603030153453f, 1.782722839948705f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.30094426 62.66653633 -151.87825434 {Pose: {Head: [-1.0473661410028678f, -176.11440133412742f, 7.82485880638012f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 913.96275072 62.63207250 -151.78977115 {Pose: {Head: [-0.047135536795555016f, -179.92482961553085f, 2.610069220510847f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.64825701 62.69362501 -152.15464376 {Pose: {Head: [-13.009199369558166f, -176.08569059642366f, -0.009010069485141744f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 913.55884677 62.70563698 -152.10048571 {Pose: {Head: [-12.479835592768495f, -166.99439710829958f, 3.8840583974502008f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.87067211 62.71041594 -152.22277834 {Pose: {Head: [-15.47483723257731f, -176.0798055802462f, -0.0020645063225158324f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 913.97713500 62.73531922 -152.27897297 {Pose: {Head: [-18.975262586658108f, 178.91234590591884f, 0.0012133776173226492f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 914.73448241 62.61733398 -151.80875632 {Pose: {Head: [-0.016220147571386536f, 176.24819776123337f, 0.013840452258393452f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"milk_bucket", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 915.66730600 64.65454612 -152.09060069 {Pose: {Head: [-28.861394290071946f, 179.5798181722328f, -0.5149433718446083f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.53481881 64.65465212 -152.05961305 {Pose: {Head: [-28.82402967655602f, 179.9911942412621f, -0.0757485025541625f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.71838379 64.60434288 -152.24030720 {Pose: {Head: [-28.273068870614026f, 174.24510022469758f, 0.018020897877761604f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.83211623 65.00335763 -152.28343842 {Pose: {Head: [-89.47784002403101f, 177.15573661234208f, -0.2303015759578543f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.81898616 65.03516056 -152.29273517 {Pose: {Head: [-90.31957669053733f, -172.31040251864198f, -0.6211525285751527f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.09889028 64.64007325 -152.04952431 {Pose: {Head: [-25.823756852634673f, 175.73458344908224f, -0.23786509869535824f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.90479496 64.60569106 -152.22865150 {Pose: {Head: [-28.472090115375725f, 172.08960335517602f, 0.04221618555197131f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.17157754 65.05642996 -152.33899615 {Pose: {Head: [-89.57289417418806f, 172.336313421744f, -0.1390720737038071f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.37890618 64.62929702 -152.02445821 {Pose: {Head: [-25.409111977067802f, 179.60070366269022f, 10.253668746182374f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.40866758 65.00860261 -152.30661653 {Pose: {Head: [-89.86273862882074f, 179.35424076674127f, 0.14370013873165868f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.22002646 64.64355450 -152.20815397 {Pose: {Head: [-30.765746110871927f, 171.3883272925116f, -8.710136706773856f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.31311370 64.64903131 -152.19523601 {Pose: {Head: [-29.14744602152207f, 174.338524185657f, 5.358004480551611f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.78252223 64.58545374 -152.02011971 {Pose: {Head: [-25.231250341371833f, -179.9335913725917f, -0.1592066783292436f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.35453541 64.59106007 -152.15391888 {Pose: {Head: [-26.070477636880955f, 176.44023615511244f, 0.05226492480493799f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.31692199 64.63348413 -152.13332476 {Pose: {Head: [-28.81308167327247f, -179.85057706529378f, -0.46986536630681214f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.81109308 64.61947836 -152.16798712 {Pose: {Head: [-28.4910730610258f, 168.71499618708964f, -5.441759857478041f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.21937837 65.03652381 -152.27546995 {Pose: {Head: [-90.10889526557862f, 179.9622754735095f, 0.22641465153829674f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.20851880 64.61353756 -152.30813866 {Pose: {Head: [-29.753151708356306f, 179.98793848713365f, -0.004595665467743934f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.52698578 65.07603985 -152.58613657 {Pose: {Head: [-89.02068789710972f, -177.45103425603403f, -0.08249463676654284f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.74686647 64.67232129 -152.16478321 {Pose: {Head: [-32.086137517515574f, 178.53911376167954f, -0.428928838136111f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.50436098 64.65600320 -152.18211591 {Pose: {Head: [-29.32087896672244f, 172.02842401677339f, 0.058912594123311596f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.95892915 64.58795039 -152.04983701 {Pose: {Head: [-25.47512684738871f, -179.51753430562198f, -0.08687864919483473f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.95745772 64.60543856 -152.17282364 {Pose: {Head: [-28.45348985061121f, 168.44167772536156f, 0.003542458692549077f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.73713045 65.05072178 -152.53518918 {Pose: {Head: [-89.12109759642597f, -177.70142209570744f, -0.032530692001747505f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.46257570 64.58496372 -152.06981299 {Pose: {Head: [-25.018226516631643f, 174.82703261542585f, -0.048886867007418205f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 913.92271449 65.02545398 -152.40764711 {Pose: {Head: [-89.17312795490488f, -174.73187404843404f, -0.1124388573994507f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 914.22358232 64.62046224 -152.09613311 {Pose: {Head: [-26.387391851656837f, 171.6624504156235f, -9.090866981800342f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.09718622 64.58845809 -152.08098983 {Pose: {Head: [-25.644817091896364f, -179.74098932438113f, 0.0136524308176388f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}
summon armor_stand 915.51179092 65.00735370 -152.27959512 {Pose: {Head: [-89.95805916850435f, 177.80996564576637f, -0.593536636563404f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"egg", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 1b}

summon armor_stand 896.93629431 63.65889451 -167.04480429 {Pose: {Head: [-7.540517496652752f, 0.2120884781437799f, 0.007997607632202784f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 896.31146687 63.70591813 -166.91956218 {Pose: {Head: [-14.794900590957859f, 0.19952541864752815f, -0.037802362128403516f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 898.13915389 63.61709490 -167.19739095 {Pose: {Head: [0.02055402481987615f, -14.41770770769661f, 0.00234441023263985f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 898.02118246 63.62643870 -167.20236787 {Pose: {Head: [0.0011672393031724136f, -14.415502366012053f, -1.37811307050449f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.63324951 63.67101740 -167.02835534 {Pose: {Head: [-9.503701357143816f, 9.772811019824754f, 0.00053502388622174f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 898.25589504 63.68108381 -166.89844349 {Pose: {Head: [-11.092263523423053f, -6.936226164416274f, -0.002015489693385246f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 896.49360784 63.73086871 -166.81740103 {Pose: {Head: [-18.36145089468238f, 0.1088691505724574f, -0.0013302231631835881f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 898.04498320 63.65644029 -166.99457298 {Pose: {Head: [-7.11031554299615f, -13.310330157127064f, -0.0105777827716541f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 896.70543577 63.64828787 -167.11768776 {Pose: {Head: [-5.730172389634596f, 0.16263488982173294f, 0.002654579642560204f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.59459827 63.67667988 -166.94333614 {Pose: {Head: [-10.404580348604847f, 2.6503494375417076f, 0.005765931890031497f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.36814756 63.74314545 -167.06158026 {Pose: {Head: [-9.62064041147096f, 8.363504710612444f, -7.979750558904225f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 896.31188327 63.73093785 -166.77641896 {Pose: {Head: [-18.37115994735306f, 0.10401991174532911f, -0.012321628173697866f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.96599152 63.67102918 -167.01126735 {Pose: {Head: [-9.503323124811125f, 9.76586061489052f, 0.004076860100372986f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 898.51841100 63.64144387 -167.18265342 {Pose: {Head: [-0.9071410227175848f, 0.2834828001094009f, 3.690107445233843f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.84137419 63.77059646 -166.66759888 {Pose: {Head: [-23.657483782235232f, 2.7357937361695277f, -0.000835316834835616f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"salmon", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 904.09561406 63.79286863 -167.20393859 {Pose: {Head: [-1.5067195671542075f, -3.7914876806376165f, 7.983908002051677f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 902.45766667 63.63493743 -167.11515677 {Pose: {Head: [-3.380718168741193f, 1.7395828493506764f, 0.00485072627411594f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 903.31734615 63.94247015 -166.84384514 {Pose: {Head: [-18.923190935835443f, -9.102278070388483f, -11.668940743289566f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 902.38871282 63.66827623 -166.94313258 {Pose: {Head: [-9.06966759152989f, -1.3014981692548402f, -0.007095315256451623f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 902.39806152 63.71751065 -166.71887910 {Pose: {Head: [-16.48878216109507f, 1.6190425000352522f, 0.00153612742099651f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 903.61553530 63.74632674 -166.69307239 {Pose: {Head: [-20.46911139878507f, -1.9884963918382006f, 0.0017604472149975868f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 904.30672341 63.63983474 -167.16365711 {Pose: {Head: [-1.6807618802124664f, -4.061764372905351f, -2.352038059742406f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 903.23017887 63.79215260 -167.06394461 {Pose: {Head: [-15.929030378461684f, -25.7613608525701f, 10.322738381296473f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.56342894 63.77954800 -166.71250674 {Pose: {Head: [-24.805900305856344f, 19.23453528931817f, 0.0004960316345635844f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 903.45998209 63.73095608 -166.85400154 {Pose: {Head: [-18.378380187624007f, -5.1738998389087145f, -0.0023343603062948946f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 904.53578410 63.73199951 -166.84722593 {Pose: {Head: [-18.53194831086348f, -3.9919178237257094f, -0.02120569099813226f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 901.21440658 63.81136339 -166.71168257 {Pose: {Head: [-23.906594258170426f, -2.181295653635671f, 7.2087717698552884f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 903.31975132 63.71133990 -167.06291701 {Pose: {Head: [-15.607484702007774f, -28.706331217101205f, -0.014457968793908507f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 904.35546404 63.73278967 -166.74367612 {Pose: {Head: [-18.62705590919096f, -1.154748486349463f, -0.002280291108445564f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 902.07661355 63.69220031 -166.83124933 {Pose: {Head: [-12.79143447915815f, -1.2805137022394542f, -0.0019402341877217454f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 903.51865676 63.73232904 -166.77481329 {Pose: {Head: [-18.561009756622425f, -5.158323601448982f, -0.0007124196070548045f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 901.03457323 63.76301042 -167.21076278 {Pose: {Head: [-0.021768265738835984f, 0.00421162517982869f, 14.34345586173368f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 901.18861260 63.80055512 -167.17162296 {Pose: {Head: [-0.040625533832550166f, 0.003743472545740432f, 12.984648212418127f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 902.75714907 63.71268240 -166.75422066 {Pose: {Head: [-15.797836937220158f, 7.2657937657791765f, 0.0026154707417183074f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.65008317 63.77766175 -166.78103788 {Pose: {Head: [-24.5743426198998f, 11.07465789618398f, 0.0032422412500527436f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 902.63307062 63.66705203 -167.18056102 {Pose: {Head: [-1.8357941936428719f, 1.5037941418311733f, -5.698710306381533f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 904.26476105 63.94552517 -166.84760786 {Pose: {Head: [-18.749222819273786f, -4.10081000884146f, -8.80977225280031f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 903.42410063 63.72408025 -166.90803133 {Pose: {Head: [-17.439732767994172f, -5.187006882273712f, 0.03162292687576917f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 902.12805258 63.69735688 -167.06885678 {Pose: {Head: [-3.9944944729584835f, -1.9305515967801712f, -9.469066594673928f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"tropical_fish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 905.90286493 63.69775908 -166.99535660 {Pose: {Head: [-13.622254950943374f, 1.2973477818715142f, -0.002242104940343924f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 905.76449218 63.71840429 -166.86603624 {Pose: {Head: [-16.616076851295514f, 1.2902931681883854f, -0.0029573922934302797f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 906.43828389 63.65187496 -167.01244386 {Pose: {Head: [-6.3527724912714625f, -5.679269951045703f, -0.005957020837279873f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 906.89928707 63.76937573 -166.61798818 {Pose: {Head: [-23.50205833686038f, -0.548947153078872f, 0.00009628485219241145f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 907.36853635 63.80357058 -167.20550298 {Pose: {Head: [-0.20937882748176517f, 0.5402622600700553f, 26.26945997887436f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 907.63203056 63.76996580 -166.71990794 {Pose: {Head: [-23.577097838897018f, -5.912679988847413f, 0.001083256584514198f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 906.69597526 63.67471864 -167.00586518 {Pose: {Head: [-6.4490689485388195f, -5.356608030544988f, 4.326319616147868f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 906.06793446 63.68220808 -166.85337245 {Pose: {Head: [-11.266648500988694f, 1.019048241309901f, -0.0002184916383282174f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 907.39706148 63.76964374 -166.73859506 {Pose: {Head: [-23.54869896702191f, -5.918756943242071f, -0.011096515841667822f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 906.79477596 63.85900770 -167.14893473 {Pose: {Head: [-3.49645346345331f, 2.5691739677889354f, -12.076817569864895f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 906.88529756 63.76895064 -166.66081303 {Pose: {Head: [-23.452995185755576f, -0.5409614778612979f, -0.0033355747514753546f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 907.07466316 63.66222334 -167.16101429 {Pose: {Head: [-2.899957869524961f, 5.417696109790437f, -3.573853334897925f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 905.95814172 63.92146966 -167.00780946 {Pose: {Head: [-13.705541938496083f, -0.4248452641513296f, -7.041529036980336f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id:"pufferfish", Count:1b}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 899.90417810 63.38777246 -159.87687532 {Pose: {Head: [-90.04416441952458f, 89.00766901104689f, -0.1283813622523964f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 500, display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Sold (5.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.57632252 63.32838142 -161.68705526 {Pose: {Head: [-89.92436858405782f, 90.00629248153176f, -4.72227315915548f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 500, display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Sold (5.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.89822416 63.31434329 -161.39679538 {Pose: {Head: [-90.12015839415677f, 90.39069404389458f, -4.892004846059428f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 500, display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Sold (5.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.82482986 63.31507888 -161.00675329 {Pose: {Head: [-89.9456464646266f, 92.60881902054714f, -4.337834916049223f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 500, display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Sold (5.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.90514205 63.40151350 -160.91773412 {Pose: {Head: [-90.23782388124968f, 88.81474625429962f, -4.220713409959934f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 500, display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Sold (5.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.92185451 63.34308881 -160.50206393 {Pose: {Head: [-90.01739581284237f, 89.0068648826503f, -0.5723554807137176f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 500, display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Sold (5.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.87011040 63.35069747 -159.83685934 {Pose: {Head: [-90.07573541241135f, 87.16841617110266f, -0.08222008965120249f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 500, display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Sold (5.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 899.90642967 63.38141933 -160.65731975 {Pose: {Head: [-90.24083968192524f, 88.84788570307273f, -4.260776377489935f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 500, display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Sold (5.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

summon armor_stand 900.13576671 64.26718560 -161.17114439 {Pose: {Head: [-23.255506798079377f, 91.67019274807718f, -0.02313044645782941f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.27240818 64.26611356 -161.55357409 {Pose: {Head: [-23.077728937261075f, 89.97604808324326f, 0.00020450374850272712f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.22995330 64.26625910 -161.52020022 {Pose: {Head: [-23.117605722311822f, 89.89913784908298f, -0.006936337862586494f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.72306248 64.11788730 -160.56859450 {Pose: {Head: [-0.0001299794120526359f, 90.0511089102535f, -0.9241060283903301f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.54319329 64.11763385 -160.67842073 {Pose: {Head: [-0.11133448452047055f, 96.13694399784379f, 0.01696663904439355f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.57394746 64.11960069 -159.89413159 {Pose: {Head: [-0.4832293584175152f, 81.29098415104956f, 0.003042943696881255f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.31494772 64.26590639 -161.44643127 {Pose: {Head: [-23.0727453551894f, 89.96810836825415f, -0.003684219121511512f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.18770031 64.26653034 -161.36837322 {Pose: {Head: [-23.148560209203886f, 89.88765518264724f, 0.002023365032110294f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.63001052 64.11748798 -160.47634725 {Pose: {Head: [-0.07978467004800083f, 90.37582177705542f, 0.016794115739033163f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.59061757 64.11752386 -160.45070867 {Pose: {Head: [-0.0842498271610167f, 90.41480710585107f, 0.025519269754775854f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}
summon armor_stand 900.67312773 64.11722461 -160.58167835 {Pose: {Head: [-0.008812528571073432f, 90.05644560369221f, -0.10401655737949937f]}, Tags: ["item_holder"], ArmorItems: [{},{},{},{id: "minecraft:potion", Count: 1b, tag: {cost: 1000, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"Sold (10.00B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}], DisabledSlots: 4144959, Invulnerable: 1b, Invisible: 1b, NoGravity: 1b, Silent: 1b, Marker: 1b, Small: 0b}

# SET UP ITEM DETECTION
scoreboard objectives add idetect dummy
scoreboard objectives add i0detect dummy
scoreboard objectives add i1detect dummy

# SET UP BITWISE OPERATORS
scoreboard objectives add bitwise dummy

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

tag @a remove victim-of-dialogue-by-wheatish

tag @a remove victim-of-dialogue-by-sawyer

tag @a remove victim-of-dialogue-by-simon

tag @a remove victim-of-dialogue-by-cashier

tag @a remove victim-of-dialogue-by-cameron

tag @a remove victim-of-dialogue-by-__apple

tag @a remove victim-of-dialogue-by-__melon_slice

tag @a remove victim-of-dialogue-by-__glow_berries

tag @a remove victim-of-dialogue-by-__milk

tag @a remove victim-of-dialogue-by-__egg

tag @a remove victim-of-dialogue-by-__pickle

tag @a remove victim-of-dialogue-by-__bamboo

tag @a remove victim-of-dialogue-by-__kelp

tag @a remove victim-of-dialogue-by-__cane

tag @a remove victim-of-dialogue-by-__mysterhyshrooms

tag @a remove victim-of-dialogue-by-__shiitake

tag @a remove victim-of-dialogue-by-__beet

tag @a remove victim-of-dialogue-by-__potato

tag @a remove victim-of-dialogue-by-__carrot

tag @a remove victim-of-dialogue-by-__berries

tag @a remove victim-of-dialogue-by-__rawbeef

tag @a remove victim-of-dialogue-by-__rawmutton

tag @a remove victim-of-dialogue-by-__porkchop

tag @a remove victim-of-dialogue-by-__rabbit

tag @a remove victim-of-dialogue-by-__chicken

tag @a remove victim-of-dialogue-by-__pufferfish

tag @a remove victim-of-dialogue-by-__clownfish

tag @a remove victim-of-dialogue-by-__salmon

tag @a remove victim-of-dialogue-by-__monster

tag @a remove victim-of-dialogue-by-__lacroix








