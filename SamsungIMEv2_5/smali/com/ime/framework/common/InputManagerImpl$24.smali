.class Lcom/ime/framework/common/InputManagerImpl$24;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    sget-boolean v7, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungIME"

    const-string v8, "mSipLogWeeklyReceiver"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/ime/framework/common/InputManagerImpl;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const-string v8, "S020"

    const-string v9, ""

    const/16 v10, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Lcom/ime/framework/common/InputManagerImpl;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object v7, p0, Lcom/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/ime/framework/common/InputManagerImpl;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v1

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v4, v1, v3

    if-nez v4, :cond_2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const-string v8, "S020"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/ime/framework/common/InputManagerImpl;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {v4}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ime/framework/common/LanguageID;->getCountryCodeOfLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v6

    iget-object v7, p0, Lcom/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const-string v8, "S021"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/ime/framework/common/InputManagerImpl;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void
.end method
