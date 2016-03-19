.class Lcom/ime/implement/setting/ACLanguagesSettingsPreference$4;
.super Ljava/lang/Object;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForRoam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$4;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$4;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # invokes: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V
    invoke-static {v0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$400(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V

    return-void
.end method
