// SPDX-License-Identifier: MIT

pragma solidity >=0.7.6 <0.8.0;

import {IERC165} from "@animoca/ethereum-contracts-core-1.1.2/contracts/introspection/IERC165.sol";
import {IPurchaseNotificationsReceiver} from "../interfaces/IPurchaseNotificationsReceiver.sol";

/**
 * @title PurchaseNotificationsReceiver
 * Abstract base IPurchaseNotificationsReceiver implementation.
 */
abstract contract PurchaseNotificationsReceiver is IPurchaseNotificationsReceiver, IERC165 {
    bytes4 internal constant _PURCHASE_NOTIFICATION_REJECTED = 0xffffffff;

    constructor() {}

    function supportsInterface(bytes4 interfaceId) external view virtual override returns (bool) {
        return interfaceId == type(IPurchaseNotificationsReceiver).interfaceId;
    }
}
