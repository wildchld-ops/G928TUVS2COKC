.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->showHandwritingLanguageSettingDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->finish()V

    return-void
.end method
