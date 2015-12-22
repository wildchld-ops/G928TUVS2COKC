.class public final Lcom/kddi/android/internal/pdg/PdgStatusManager;
.super Ljava/lang/Object;
.source "PdgStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PdgStatusManager() start"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const-string v0, "PdgStatusManager() end"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static getPrivacyData(Landroid/content/Context;Ljava/lang/String;I)Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .locals 16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "int getPrivacyData( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ) start"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "parameter error: package name is not set."

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    const-string/jumbo v2, "int getPrivacyData() end / return = null"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x2

    move/from16 v0, p2

    if-le v0, v2, :cond_3

    :cond_2
    const-string/jumbo v2, "parameter error: data type is out of range."

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    const-string/jumbo v2, "int getPrivacyData() end / return = null"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_6

    :try_start_0
    const-string v2, "content://com.kddi.android.pdg.read_only/pdg_status/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_4
    :goto_1
    if-eqz v3, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "setting_state"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v2, "auth_state"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v2, "access_time"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    if-ltz v8, :cond_a

    const/4 v2, 0x2

    if-gt v8, v2, :cond_a

    if-ltz v9, :cond_a

    const/4 v2, 0x2

    if-gt v9, v2, :cond_a

    new-instance v6, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;-><init>(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "int getPrivacyData() end / return = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    :try_start_1
    const-string v2, "content://com.kddi.android.pdg.read_only/pdg_status/location"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    const-string v2, "content://com.kddi.android.pdg.read_only/pdg_status/uim"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto/16 :goto_1

    :catch_0
    move-exception v13

    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v6, v15

    goto :goto_3

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    :cond_9
    move-object v6, v15

    goto :goto_3

    :cond_a
    move-object v6, v15

    goto :goto_2
.end method
