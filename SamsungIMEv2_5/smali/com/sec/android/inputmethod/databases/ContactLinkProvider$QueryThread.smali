.class Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
.super Ljava/lang/Thread;
.source "ContactLinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/databases/ContactLinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private EMAIL_FILTER_URI:Landroid/net/Uri;

.field private mInputSpell:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->mInputSpell:Ljava/lang/String;

    const-string v0, "content://com.android.contacts/data/phone_emails_ime/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->EMAIL_FILTER_URI:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->mInputSpell:Ljava/lang/String;

    return-void
.end method

.method private sendMessage(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mUIhandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$200(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
    invoke-static {v1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
    invoke-static {v1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    move-result-object v1

    if-ne v1, p0, :cond_1

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgId =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mUIhandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$200(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->EMAIL_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->mInputSpell:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$300(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "SamsungIME_UnifiedIME"

    const-string v4, "updateContactInfoToCandidate() return 0 becaue cr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->getContactProviderStatus()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SamsungIME_UnifiedIME"

    const-string v4, "updateContactInfoToCandidate() return 0 becaue ProviderStatus is not STATUS_NORMAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :try_start_0
    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->PROJECTION_PHONE:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$400()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "contact_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v14, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->contactId:Ljava/lang/String;

    if-eqz v14, :cond_8

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    iput v12, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->dataCount:I

    if-gtz v12, :cond_4

    if-lez v8, :cond_6

    :cond_4
    const/4 v10, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_d

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2026

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->addedCandList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContactLinkProvider, addedCandList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # operator++ for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactDataCount:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$508(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)I

    if-lez v12, :cond_6

    if-nez v8, :cond_6

    add-int/lit8 v8, v8, 0x1

    :cond_6
    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mQueryThread = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
    invoke-static {v5}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mQueryThread this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
    invoke-static {v3}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
    invoke-static {v3}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactDataCount:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$500(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x46

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->sendMessage(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v16

    const-string v3, "SamsungIME_UnifiedIME"

    const-string v4, "CursorWindowAllocationException Error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->contactId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->name:Ljava/lang/String;

    const-string v3, "mimetype"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v3, "data2"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v3, "data1"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    :goto_3
    if-nez v15, :cond_b

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContactInfoToCandidate() data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mimeType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->data:[Ljava/lang/String;

    aput-object v11, v3, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->dataType:[I

    aput v13, v3, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->mimeType:[Ljava/lang/String;

    aput-object v18, v3, v12

    add-int/lit8 v12, v12, 0x1

    const/16 v3, 0x14

    if-eq v12, v3, :cond_3

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_c
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->addedCandList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v4, v4, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContactLinkProvider, Contact added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    iget-object v5, v5, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
