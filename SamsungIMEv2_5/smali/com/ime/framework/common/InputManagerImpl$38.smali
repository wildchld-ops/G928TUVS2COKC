.class Lcom/ime/framework/common/InputManagerImpl$38;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/InputManagerImpl;->sendInputLanguage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;

.field final synthetic val$cCode:Ljava/lang/String;

.field final synthetic val$selectedLangsList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$38;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    iput-object p2, p0, Lcom/ime/framework/common/InputManagerImpl$38;->val$cCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ime/framework/common/InputManagerImpl$38;->val$selectedLangsList:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$38;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/ime/framework/common/InputManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sip_input_language"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$38;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mCurrentInputLanguage:Lcom/ime/framework/common/Language;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$6400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$38;->val$cCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$38;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/ime/framework/common/InputManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handwriting_language_list"

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$38;->val$selectedLangsList:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
