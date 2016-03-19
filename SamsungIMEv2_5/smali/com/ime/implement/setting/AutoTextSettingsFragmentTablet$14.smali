.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$14;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$14;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$14;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    const/4 v1, 0x0

    # setter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;
    invoke-static {v0, v1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$502(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Landroid/widget/EditText;)Landroid/widget/EditText;

    return-void
.end method
