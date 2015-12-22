.class Lcom/android/phone/CallFeaturesSetting$39;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$39;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "com.movial.ipphone.IPUtils"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v9, "IMS_REGISTRATION"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-class v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v6, "com.movial.ipphone.IPUtils"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v9, "IMS_REG_STATUS"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-class v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v6, "CallFeaturesSetting"

    const-string v9, "Movial WFC onReceive()"

    invoke-static {v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "CallFeaturesSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Movial WFC onReceive(), registered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting$39;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mCallForwarding:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->access$6200(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting$39;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mCallForwarding:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->access$6200(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    if-nez v5, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting$39;->this$0:Lcom/android/phone/CallFeaturesSetting;

    if-nez v5, :cond_3

    :goto_2
    # invokes: Lcom/android/phone/CallFeaturesSetting;->updatePersonalizeSoundNoiseReductionAndIncoimgPopup(Z)V
    invoke-static {v6, v7}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v4

    const-string v6, "CallFeaturesSetting"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_2
.end method
