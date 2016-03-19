.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
