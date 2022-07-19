.class public final Lcom/alipay/mobile/aompfilemanager/utils/io/b;
.super Ljava/lang/Object;
.source "SafeStructStat.java"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:J

.field public final m:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->a:J

    .line 102
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->b:J

    .line 103
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->c:I

    .line 104
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->d:J

    .line 105
    iput v2, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->e:I

    .line 106
    iput v2, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->f:I

    .line 107
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->g:J

    .line 108
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->h:J

    .line 109
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->i:J

    .line 110
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->j:J

    .line 111
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->k:J

    .line 112
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->l:J

    .line 113
    iput-wide v0, p0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->m:J

    .line 114
    return-void
.end method

.method public constructor <init>(JJIJIIJJJJJJJ)V
    .locals 3

    .line 84
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    move-wide v1, p1

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->a:J

    .line 86
    move-wide v1, p3

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->b:J

    .line 87
    move v1, p5

    iput v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->c:I

    .line 88
    move-wide v1, p6

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->d:J

    .line 89
    move v1, p8

    iput v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->e:I

    .line 90
    move v1, p9

    iput v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->f:I

    .line 91
    move-wide v1, p10

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->g:J

    .line 92
    move-wide v1, p12

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->h:J

    .line 93
    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->i:J

    .line 94
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->j:J

    .line 95
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->k:J

    .line 96
    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->l:J

    .line 97
    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->m:J

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 21

    .line 116
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-eqz v0, :cond_1c

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    nop

    .line 134
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 135
    const/4 v4, 0x0

    if-eqz v2, :cond_e

    array-length v5, v2

    if-eqz v5, :cond_e

    .line 136
    array-length v5, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_d

    move-object/from16 v18, v4

    aget-object v4, v2, v3

    .line 137
    move-object/from16 v19, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 138
    move/from16 v20, v5

    const-string/jumbo v5, "st_dev"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Long;

    .line 140
    goto/16 :goto_1

    .line 142
    :cond_0
    const-string/jumbo v5, "st_ino"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Long;

    .line 144
    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 146
    :cond_1
    const-string/jumbo v5, "st_mode"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    .line 148
    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 150
    :cond_2
    const-string/jumbo v5, "st_nlink"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Long;

    .line 152
    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 154
    :cond_3
    const-string/jumbo v5, "st_uid"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 155
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/Integer;

    .line 156
    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 158
    :cond_4
    const-string/jumbo v5, "st_gid"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 160
    move-object v10, v2

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 162
    :cond_5
    const-string/jumbo v5, "st_rdev"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 163
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 164
    move-object v11, v2

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 166
    :cond_6
    const-string/jumbo v5, "st_size"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 167
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 168
    move-object v12, v2

    move-object/from16 v4, v18

    goto :goto_1

    .line 170
    :cond_7
    const-string/jumbo v5, "st_atime"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 171
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 172
    move-object v13, v2

    move-object/from16 v4, v18

    goto :goto_1

    .line 174
    :cond_8
    const-string/jumbo v5, "st_mtime"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 175
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 176
    move-object v14, v2

    move-object/from16 v4, v18

    goto :goto_1

    .line 178
    :cond_9
    const-string/jumbo v5, "st_ctime"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 179
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 180
    move-object v15, v2

    move-object/from16 v4, v18

    goto :goto_1

    .line 182
    :cond_a
    const-string/jumbo v5, "st_blksize"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 183
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 184
    move-object/from16 v16, v2

    move-object/from16 v4, v18

    goto :goto_1

    .line 186
    :cond_b
    const-string/jumbo v5, "st_blocks"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 187
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v17, v2

    move-object/from16 v4, v18

    goto :goto_1

    .line 186
    :cond_c
    move-object/from16 v4, v18

    .line 136
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v19

    move/from16 v5, v20

    goto/16 :goto_0

    :cond_d
    move-object/from16 v18, v4

    goto :goto_2

    .line 192
    :cond_e
    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_2
    const-wide/16 v2, 0x0

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    :cond_f
    move-wide v4, v2

    :goto_3
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->a:J

    .line 193
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_4

    :cond_10
    move-wide v4, v2

    :goto_4
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->b:J

    .line 194
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    iput v0, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->c:I

    .line 195
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_6

    :cond_12
    move-wide v4, v2

    :goto_6
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->d:J

    .line 196
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    iput v0, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->e:I

    .line 197
    if-eqz v10, :cond_14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    iput v0, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->f:I

    .line 198
    if-eqz v11, :cond_15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_9

    :cond_15
    move-wide v4, v2

    :goto_9
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->g:J

    .line 199
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_a

    :cond_16
    move-wide v4, v2

    :goto_a
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->h:J

    .line 200
    if-eqz v13, :cond_17

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_b

    :cond_17
    move-wide v4, v2

    :goto_b
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->i:J

    .line 201
    if-eqz v14, :cond_18

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_c

    :cond_18
    move-wide v4, v2

    :goto_c
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->j:J

    .line 202
    if-eqz v15, :cond_19

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_d

    :cond_19
    move-wide v4, v2

    :goto_d
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->k:J

    .line 203
    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_e

    :cond_1a
    move-wide v4, v2

    :goto_e
    iput-wide v4, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->l:J

    .line 204
    if-eqz v17, :cond_1b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_1b
    iput-wide v2, v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 118
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
