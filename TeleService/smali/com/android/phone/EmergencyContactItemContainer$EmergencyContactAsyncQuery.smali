.class public Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "EmergencyContactItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyContactItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyContactAsyncQuery"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyContactItemContainer;


# direct methods
.method public constructor <init>(Lcom/android/phone/EmergencyContactItemContainer;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16

    const/4 v6, 0x0

    const/4 v12, 0x0

    const-wide/16 v4, -0x1

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    # invokes: Lcom/android/phone/EmergencyContactItemContainer;->setContactsId()V
    invoke-static {v2}, Lcom/android/phone/EmergencyContactItemContainer;->access$000(Lcom/android/phone/EmergencyContactItemContainer;)V

    sget-object v2, Lcom/android/phone/EmergencyContactItemContainer$1;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ItemType:[I

    invoke-static {}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->values()[Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v2, "safety_emergency_service"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v3, "EmergencyContactItemContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EMERGENCY_SERVICE - number == null : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v6, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_2

    const-string v6, "911"

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v6

    invoke-virtual/range {v2 .. v9}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;IZ)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->restoreContainerState()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    const/4 v8, 0x0

    move-object v7, v6

    invoke-virtual/range {v2 .. v8}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_1
    if-eqz p3, :cond_b

    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v15, 0x1

    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v15, v2, :cond_a

    const-string v2, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v2, "photo_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v2, "EmergencyContactItemContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete cursor["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] : id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", number="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", name="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", photoId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    cmp-long v2, v4, v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    sget-object v9, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move-wide v10, v4

    move-object v13, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    cmp-long v2, v4, v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v3, 0x1

    aget-object v8, v2, v3

    sget-object v9, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move-wide v10, v4

    move-object v13, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    cmp-long v2, v4, v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v3, 0x2

    aget-object v8, v2, v3

    sget-object v9, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move-wide v10, v4

    move-object v13, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    cmp-long v2, v4, v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v3, 0x3

    aget-object v8, v2, v3

    sget-object v9, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move-wide v10, v4

    move-object v13, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    cmp-long v2, v4, v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v3, 0x4

    aget-object v8, v2, v3

    sget-object v9, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move-wide v10, v4

    move-object v13, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_4

    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->restoreContainerState()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startQuery(Lcom/android/phone/EmergencyContactItemContainer$ItemType;)V
    .locals 9

    const/4 v2, 0x0

    const-string v0, "EmergencyContactItemContainer"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$1;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ItemType:[I

    invoke-virtual {p1}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data1"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "photo_id"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "display_name"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "default_emergency"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "_id"

    aput-object v1, v4, v0

    invoke-virtual {p1}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->getValue()I

    move-result v1

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ICE"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "emergency"

    const-string v5, "1"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "defaultId"

    const-string v5, "2"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ICE"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "emergency"

    const-string v5, "1"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v0, "safety_emergency_contacts"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "defaultId"

    const-string v1, "0"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    :goto_1
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    :cond_0
    const-string v0, "defaultId"

    const-string v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
