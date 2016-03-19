.class Lcom/ime/implement/setting/SwiftkeyLanguagePreference$5;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->setEnableMKBDDialog()V
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)V

    const/4 v0, 0x0

    return v0
.end method
