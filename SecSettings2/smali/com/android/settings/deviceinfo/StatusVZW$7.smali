.class Lcom/android/settings/deviceinfo/StatusVZW$7;
.super Landroid/os/Handler;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "response"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    check-cast v5, [B

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1402([B)[B

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    const-string v7, "user_name"

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;
    invoke-static {v5, v6}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1502(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/preference/Preference;)Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->NAI_length:I
    invoke-static {v5, v6}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1602(Lcom/android/settings/deviceinfo/StatusVZW;I)I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    const-string v6, ""

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1702(Lcom/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->NAI_length:I
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1600(Lcom/android/settings/deviceinfo/StatusVZW;)I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v6

    add-int v7, v3, v4

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1784(Lcom/android/settings/deviceinfo/StatusVZW;Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1700(Lcom/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1700(Lcom/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1500(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "<Not set>"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "response"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    check-cast v0, [B

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v5, v0

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # invokes: Lcom/android/settings/deviceinfo/StatusVZW;->setActivationDateStatus([B)V
    invoke-static {v5, v0}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1800(Lcom/android/settings/deviceinfo/StatusVZW;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NULL VALUE :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1500(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1700(Lcom/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
