.class public Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/content/SharedPreferences;

.field private g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

.field private h:Landroid/content/SharedPreferences$Editor;

.field private i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

.field private j:Landroid/content/Context;

.field private k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "configName"    # Ljava/lang/String;
    .param p4, "isSafety"    # Z
    .param p5, "isLessMode"    # Z

    .line 38
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    .line 21
    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b:Ljava/lang/String;

    .line 22
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->c:Z

    .line 23
    iput-boolean v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    .line 24
    iput-boolean v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    .line 25
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    .line 26
    iput-object v7, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 27
    iput-object v7, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    .line 28
    iput-object v7, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 29
    iput-object v7, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    .line 30
    iput-object v7, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 31
    iput-boolean v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    .line 39
    move/from16 v8, p4

    iput-boolean v8, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->c:Z

    .line 40
    iput-boolean v5, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    .line 41
    iput-object v4, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    .line 42
    iput-object v3, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b:Ljava/lang/String;

    .line 43
    iput-object v2, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    .line 44
    const-wide/16 v9, 0x0

    .line 45
    .local v9, "spT":J
    const-wide/16 v11, 0x0

    .line 46
    .local v11, "mySPT":J
    const-string v13, "t"

    const-wide/16 v14, 0x0

    if-eqz v2, :cond_0

    .line 47
    nop

    .line 48
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    .line 49
    invoke-interface {v0, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 51
    :cond_0
    const/16 v16, 0x0

    .line 53
    .local v16, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v0

    .line 56
    move-object/from16 v17, v16

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    move-object v0, v7

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v17, v16

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "mountedProperty":Ljava/lang/String;
    .local v17, "mountedProperty":Ljava/lang/String;
    :goto_0
    invoke-static/range {v17 .. v17}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    const-string v0, "mounted"

    move-object/from16 v7, v17

    .end local v17    # "mountedProperty":Ljava/lang/String;
    .local v7, "mountedProperty":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_1

    .line 61
    iput-boolean v14, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    iput-boolean v14, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    goto :goto_1

    .line 62
    :cond_1
    nop

    .line 63
    const-string v0, "mounted_ro"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iput-boolean v14, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    .line 65
    iput-boolean v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    goto :goto_1

    .line 57
    .end local v7    # "mountedProperty":Ljava/lang/String;
    .restart local v17    # "mountedProperty":Ljava/lang/String;
    :cond_2
    move-object/from16 v7, v17

    .line 67
    .end local v17    # "mountedProperty":Ljava/lang/String;
    .restart local v7    # "mountedProperty":Ljava/lang/String;
    :cond_3
    iput-boolean v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    iput-boolean v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    .line 70
    :goto_1
    iget-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    const-string v14, "t2"

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v19, v7

    goto/16 :goto_3

    .line 71
    :cond_5
    :goto_2
    if-eqz v2, :cond_10

    .line 72
    invoke-static/range {p2 .. p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 73
    invoke-direct {v1, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 74
    if-eqz v0, :cond_e

    .line 76
    nop

    .line 77
    :try_start_1
    invoke-virtual {v0, v4, v6}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    move-object/from16 v19, v7

    const-wide/16 v6, 0x0

    .end local v7    # "mountedProperty":Ljava/lang/String;
    .local v19, "mountedProperty":Ljava/lang/String;
    :try_start_2
    invoke-interface {v0, v13, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    move-wide/from16 v11, v20

    .line 80
    if-nez v5, :cond_8

    .line 81
    cmp-long v0, v9, v11

    if-lez v0, :cond_6

    .line 83
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 84
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_3

    .line 87
    :cond_6
    cmp-long v0, v9, v11

    if-gez v0, :cond_7

    .line 89
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 90
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    goto/16 :goto_3

    .line 92
    :cond_7
    cmp-long v0, v9, v11

    if-nez v0, :cond_d

    .line 93
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 94
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_3

    .line 99
    :cond_8
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v0, v14, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 100
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0, v14, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v11, v17

    .line 101
    cmp-long v0, v9, v11

    if-gez v0, :cond_9

    cmp-long v0, v9, v6

    if-lez v0, :cond_9

    .line 103
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 104
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_3

    .line 128
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 107
    :cond_9
    cmp-long v0, v9, v11

    if-lez v0, :cond_a

    const-wide/16 v6, 0x0

    cmp-long v0, v11, v6

    if-lez v0, :cond_a

    .line 109
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 110
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    goto :goto_3

    .line 112
    :cond_a
    const-wide/16 v6, 0x0

    cmp-long v0, v9, v6

    if-nez v0, :cond_b

    cmp-long v0, v11, v6

    if-lez v0, :cond_b

    .line 113
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 114
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    goto :goto_3

    .line 116
    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v0, v11, v6

    if-nez v0, :cond_c

    cmp-long v0, v9, v6

    if-lez v0, :cond_c

    .line 117
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 118
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto :goto_3

    .line 121
    :cond_c
    cmp-long v0, v9, v11

    if-nez v0, :cond_d

    .line 122
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v6, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 123
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    :cond_d
    goto :goto_3

    .line 128
    .end local v19    # "mountedProperty":Ljava/lang/String;
    .restart local v7    # "mountedProperty":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v19, v7

    .end local v7    # "mountedProperty":Ljava/lang/String;
    .restart local v19    # "mountedProperty":Ljava/lang/String;
    goto :goto_3

    .line 74
    .end local v19    # "mountedProperty":Ljava/lang/String;
    .restart local v7    # "mountedProperty":Ljava/lang/String;
    :cond_e
    move-object/from16 v19, v7

    .end local v7    # "mountedProperty":Ljava/lang/String;
    .restart local v19    # "mountedProperty":Ljava/lang/String;
    goto :goto_3

    .line 72
    .end local v19    # "mountedProperty":Ljava/lang/String;
    .restart local v7    # "mountedProperty":Ljava/lang/String;
    :cond_f
    move-object/from16 v19, v7

    .end local v7    # "mountedProperty":Ljava/lang/String;
    .restart local v19    # "mountedProperty":Ljava/lang/String;
    goto :goto_3

    .line 71
    .end local v19    # "mountedProperty":Ljava/lang/String;
    .restart local v7    # "mountedProperty":Ljava/lang/String;
    :cond_10
    move-object/from16 v19, v7

    .line 135
    .end local v7    # "mountedProperty":Ljava/lang/String;
    .restart local v19    # "mountedProperty":Ljava/lang/String;
    :goto_3
    cmp-long v0, v9, v11

    if-nez v0, :cond_11

    const-wide/16 v6, 0x0

    cmp-long v0, v9, v6

    if-nez v0, :cond_15

    cmp-long v0, v11, v6

    if-nez v0, :cond_15

    .line 136
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 137
    .local v6, "timestamp":J
    iget-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    if-eqz v0, :cond_12

    if-eqz v0, :cond_15

    const-wide/16 v17, 0x0

    cmp-long v0, v9, v17

    if-nez v0, :cond_15

    cmp-long v0, v11, v17

    if-nez v0, :cond_15

    .line 139
    :cond_12
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_13

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v13, 0x0

    .line 141
    .local v13, "editorTmp":Landroid/content/SharedPreferences$Editor;
    move-object v13, v0

    invoke-interface {v0, v14, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 139
    .end local v13    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    :cond_13
    const/4 v13, 0x0

    .line 145
    :goto_4
    :try_start_3
    iget-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_14

    .line 146
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    .line 147
    .local v13, "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    move-object v13, v0

    invoke-interface {v0, v14, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 148
    invoke-interface {v13}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 152
    .end local v13    # "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    :cond_14
    return-void

    .line 150
    :catch_3
    move-exception v0

    .line 155
    .end local v6    # "timestamp":J
    :cond_15
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .line 158
    invoke-static {p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 159
    .local v2, "rootFolder":Ljava/io/File;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 161
    return-object v0

    .line 163
    :cond_0
    return-object v1
.end method

.method private static a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
    .locals 7
    .param p0, "sp1"    # Landroid/content/SharedPreferences;
    .param p1, "sp2"    # Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 180
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 181
    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 182
    .local v2, "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    move-object v2, v0

    if-eqz v0, :cond_6

    .line 183
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 184
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    .line 185
    .local v0, "itorator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 187
    .local v1, "e":Ljava/util/Map$Entry;
    move-object v1, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 188
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 189
    .local v3, "value":Ljava/lang/Object;
    move-object v3, v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 190
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 191
    :cond_0
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 192
    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 193
    :cond_1
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 194
    move-object v5, v3

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 195
    :cond_2
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 196
    move-object v5, v3

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 197
    :cond_3
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 198
    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    .line 199
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 198
    invoke-interface {v2, v4, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 201
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 203
    :cond_5
    :try_start_0
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 209
    .end local v0    # "itorator":Ljava/util/Iterator;
    .end local v2    # "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    :cond_6
    return-void
.end method

.method private static a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 7
    .param p0, "sp1"    # Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    .param p1, "sp2"    # Landroid/content/SharedPreferences;

    .line 212
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 213
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 214
    .local v2, "editorTmp":Landroid/content/SharedPreferences$Editor;
    move-object v2, v0

    if-eqz v0, :cond_6

    .line 215
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {p0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    .line 217
    .local v0, "itorator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 219
    .local v1, "e":Ljava/util/Map$Entry;
    move-object v1, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 221
    .local v3, "value":Ljava/lang/Object;
    move-object v3, v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 222
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 223
    :cond_0
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 224
    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 225
    :cond_1
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 226
    move-object v5, v3

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 227
    :cond_2
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 228
    move-object v5, v3

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 229
    :cond_3
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 230
    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    .line 231
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 230
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 234
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    .end local v0    # "itorator":Ljava/util/Iterator;
    .end local v2    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    :cond_6
    return-void
.end method

.method private a()Z
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->checkFile()Z

    move-result v0

    .line 242
    .local v1, "isExist":Z
    move v1, v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 245
    :cond_0
    return v1

    .line 247
    .end local v1    # "isExist":Z
    :cond_1
    return v1
.end method

.method private static b(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "folderName"    # Ljava/lang/String;

    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 168
    .local v2, "sdCardFile":Ljava/io/File;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 170
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    .line 169
    const-string v4, "%s%s%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "rootFolder":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 174
    :cond_0
    return-object v1

    .line 176
    .end local v1    # "rootFolder":Ljava/io/File;
    :cond_1
    return-object v1
.end method

.method private b()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    .line 258
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 363
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 365
    .local v0, "t":J
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    const-string v3, "t"

    if-eqz v2, :cond_0

    .line 366
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 367
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v2, :cond_1

    .line 370
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 371
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 373
    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 9

    .line 376
    const/4 v0, 0x1

    .line 377
    .local v0, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 378
    .local v1, "t":J
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_1

    .line 379
    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    if-nez v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 381
    const-string v4, "t"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 384
    :cond_0
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_1

    .line 385
    const/4 v0, 0x0

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 389
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 390
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    .line 394
    :cond_2
    const/4 v3, 0x0

    .line 396
    .local v3, "mountedProperty":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 399
    goto :goto_0

    .line 398
    :catch_0
    move-exception v6

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 401
    const-string v6, "mounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 402
    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-nez v7, :cond_5

    .line 403
    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b:Ljava/lang/String;

    .line 404
    invoke-direct {p0, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v7

    .line 405
    .local v5, "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    move-object v5, v7

    if-eqz v7, :cond_4

    .line 406
    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 408
    iget-boolean v8, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    if-nez v8, :cond_3

    .line 409
    iget-object v8, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v8, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    goto :goto_1

    .line 411
    :cond_3
    iget-object v8, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v7, v8}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 413
    :goto_1
    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v7

    iput-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 415
    .end local v5    # "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    :cond_4
    goto :goto_2

    .line 417
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v7, :cond_6

    .line 418
    invoke-interface {v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_6

    .line 419
    const/4 v0, 0x0

    .line 424
    :cond_6
    goto :goto_2

    .line 422
    :catch_1
    move-exception v7

    .line 423
    .local v5, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 427
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 429
    const-string v5, "mounted_ro"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v5, :cond_a

    .line 432
    :cond_8
    :try_start_2
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v5, :cond_9

    .line 433
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 438
    :cond_9
    goto :goto_3

    .line 436
    :catch_2
    move-exception v4

    .line 441
    :cond_a
    :goto_3
    return v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 499
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    .line 500
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 503
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 505
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 489
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    .line 490
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 493
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 495
    :cond_1
    return v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 479
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    .line 480
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 483
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 485
    :cond_1
    return v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 459
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    .line 460
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 463
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 465
    :cond_1
    return v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 469
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    .line 470
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 473
    invoke-interface {v0, p1, v1, v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 475
    :cond_1
    return-wide v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    .line 446
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 448
    .local v2, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    return-object v2

    .line 452
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 453
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 455
    :cond_1
    return-object v1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 285
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    .line 287
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 294
    :cond_1
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 297
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    .line 299
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 306
    :cond_1
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 261
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    .line 263
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 267
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 270
    :cond_1
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 273
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    .line 275
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 282
    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 309
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    .line 311
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 318
    :cond_1
    return-void
.end method

.method public reload()V
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 335
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 341
    .local v0, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 344
    goto :goto_0

    .line 343
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 346
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    const-string v2, "mounted_ro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_3

    .line 351
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v2, :cond_2

    .line 352
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    :cond_2
    return-void

    .line 355
    :catch_1
    move-exception v1

    .line 360
    :cond_3
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 321
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    .line 323
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 330
    :cond_1
    return-void
.end method
