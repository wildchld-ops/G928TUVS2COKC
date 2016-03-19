.class Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2$2;
.super Ljava/lang/Object;
.source "KeyboardSwipeSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2$2;->this$1:Lcom/ime/implement/setting/KeyboardSwipeSettingsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
