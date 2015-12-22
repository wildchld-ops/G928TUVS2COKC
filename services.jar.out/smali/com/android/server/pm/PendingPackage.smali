.class final Lcom/android/server/pm/PendingPackage;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PendingPackage.java"


# instance fields
.field final sharedId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-direct/range {v2 .. v16}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PendingPackage;->sharedId:I

    return-void
.end method
