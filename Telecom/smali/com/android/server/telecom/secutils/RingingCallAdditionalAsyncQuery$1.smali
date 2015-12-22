.class final Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$1;
.super Ljava/lang/Object;
.source "RingingCallAdditionalAsyncQuery.java"

# interfaces
.implements Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingingCallAdditionalQueryComplete(ILcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onRingingCallAdditionalQueryComplete "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "starred"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/RingTTS;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/RingTTS;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/telecom/secutils/RingTTS;->setStarredContact(Z)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingingCallAdditionalQueryComplete : STARRED_QUERYING : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :sswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "group_ringtone"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    const-string v0, "onRingingCallAdditionalQueryComplete: group ringtone URI : "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :sswitch_2
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "group_vibration"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/CustomVibration;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/CustomVibration;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/secutils/CustomVibration;->setCustomVibrationUri(Landroid/net/Uri;)V

    const-string v3, "onRingingCallAdditionalQueryComplete: group vibration URI : "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :sswitch_3
    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "sec_custom_vibration"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_6

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/CustomVibration;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/CustomVibration;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/telecom/secutils/CustomVibration;->setCustomVibrationUri(Landroid/net/Uri;)V

    const-string v4, "onRingingCallAdditionalQueryComplete: personal vibration URI : "

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :goto_3
    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x4

    # getter for: Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    invoke-static {}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->access$000()Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, p2, v2, v3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
