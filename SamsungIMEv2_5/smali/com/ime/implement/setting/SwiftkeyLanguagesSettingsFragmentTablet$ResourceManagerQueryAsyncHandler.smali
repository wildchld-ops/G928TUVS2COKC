.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceManagerQueryAsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;


# direct methods
.method public constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$ResourceManagerQueryAsyncHandler;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method
