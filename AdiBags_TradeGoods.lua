local select = select;
local GetItemInfo = GetItemInfo;
local BAG_FILTER_TRADE_GOODS = BAG_FILTER_TRADE_GOODS;

local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags");
local filter = AdiBags:RegisterFilter("TradeGoods", 92);
filter.uiName = BAG_FILTER_TRADE_GOODS;

function filter:Filter(slotData)
	local expacID, _, isCraftingReagent = select(15, GetItemInfo(slotData.itemId));
	if (not isCraftingReagent) then
		return;
	end

	return ("%s (%s)"):format(BAG_FILTER_TRADE_GOODS, _G["EXPANSION_NAME" .. expacID]);
end
