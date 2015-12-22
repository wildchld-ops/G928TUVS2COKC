.class Lcom/android/phone/callsettings/SwisSettings$3;
.super Ljava/lang/Object;
.source "SwisSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SwisSettings;->ShowResolutionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SwisSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SwisSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SwisSettings$3;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings$3;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    iget-object v0, v0, Lcom/android/phone/callsettings/SwisSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swis_swys_resolution"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings$3;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone"

    const-string v2, "SWRV"

    iget-object v3, p0, Lcom/android/phone/callsettings/SwisSettings$3;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    # getter for: Lcom/android/phone/callsettings/SwisSettings;->resolutionEntry:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/SwisSettings;->access$300(Lcom/android/phone/callsettings/SwisSettings;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings$3;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    # getter for: Lcom/android/phone/callsettings/SwisSettings;->mResolution:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/callsettings/SwisSettings;->access$400(Lcom/android/phone/callsettings/SwisSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings$3;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    # getter for: Lcom/android/phone/callsettings/SwisSettings;->resolutionEntry:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/SwisSettings;->access$300(Lcom/android/phone/callsettings/SwisSettings;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings$3;->this$0:Lcom/android/phone/callsettings/SwisSettings;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SwisSettings;->onDismissDialog()V

    return-void
.end method
